#include <mutex>
#include <random>
#include <iostream>
#include <string>
#include <vector>
#include <thread>
#include <time.h>
#include <fstream>
#include "dirent.h"
#include <future>


typedef std::vector<std::string> buffer;

struct tFile
{
    std::string name;
    buffer data;
    void load(const std::string & filePath)
    {
        name = filePath;
        std::ifstream file(filePath);
        if (file.is_open())
        {
            std::string line;
            while (std::getline(file, line))
            {
                data.push_back(line);
            }
            file.close();
        }
    }
};

class Singleton 
{
public:

    static Singleton* getSingletonInstance()
    {
       // std::lock_guard<std::mutex> lock(m_);
        if(singletonInstance == nullptr)
        {
            singletonInstance = new Singleton();
        }
        return singletonInstance;
    }

    void addFile(const std::string & filePath)
    {
        //std::lock_guard<std::mutex> lock(m_);
       
        tFile t_file;
      // t_file.name = filePath;
        t_file.load(filePath);
       
        //std::cout << "adding " << t_file.name << "\n";
        m_.lock();
       
        m_files.push_back(t_file);
        m_.unlock();
    }

    tFile getFileByName(const std::string & name)
    {
        for(auto & t_files : m_files)
        {
            //std::cout << "checking " << t_files.name << "\n";
            if(t_files.name == name)
            {
                return t_files;
            }
        }

        return tFile();
    }

    void displayData()
    {
        std::lock_guard<std::mutex> lock(m_);
        for(auto & t_files : m_files)
        {
            std::cout << t_files.name << "\n";
        }
    }

int loadFromDirectory(const char * name, int level)
{
    std::cout << "scan on " << name << "\n";
    std::cout << "level start -----" << level << "\n";
		DIR *dir;
		struct dirent *entry;

		if (!(dir = opendir(name)))
		{
			std::cout << "dir failed \n";
			return 0;
		}

		if (!(entry = readdir(dir)))
		{
			std::cout << "entry failed \n";
			return 0;
		}


		do {
			if (entry->d_type == DT_DIR) {
				char path[1024];
				int len = _snprintf_s(path, sizeof(path) - 1, "%s/%s", name, entry->d_name);
				path[len] = 0;
				if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
				{
                    continue;
                }
                    
				printf("%*s[%s]\n", level * 2, "", entry->d_name);
                std::cout << "path -> " << path << "\n";

				loadFromDirectory(path, level + 1);
			}
			else
			{
				//printf("%*s- %s\n", level * 2, "", entry->d_name);
				std::string texturePath = name;
               // std::cout << "texturePath 1 -> " << texturePath << "\n";
                
				texturePath.append("/");
               // std::cout << "texturePath 2 -> " << texturePath << "\n";
				texturePath.append(entry->d_name);
                //std::cout << "texturePath 3 -> " << texturePath << "\n";
                std::cout << "||||: " << texturePath << "\n";
                m_isDones[fileCount] = false;
                std::thread t = std::thread([&](){
                    addFile(texturePath);
                    m_isDones[fileCount] = true;
                });

                fileCount += 1;
                m_threads.push_back(std::move(t));
                
			}


		} while (entry = readdir(dir));

		closedir(dir);


        std::cout << "level end -----" << level << "\n";
    
        
        if(level == 0) // end of stack
        {
            std::cout << "call \n";
            for(int i = 0; i < m_threads.size(); ++i)
            {
                if(m_threads[i].joinable())
                {
                    m_threads[i].join();
                }
            }
            std::cout << "total threads " << m_threads.size() << "\n";
        }
        

		return 0;
}

    bool isDone()
    {
        
        for (int i = 0 ; i < fileCount; ++i)
        {
            if(!m_isDones[i])
            {
                return false;
            }
        }
        return true;
    }

private:
    static Singleton *singletonInstance;
    Singleton() {}
    static std::mutex m_;
    std::vector<tFile> m_files;

    std::vector<std::thread> m_threads;
    //std::vector<std::atomic<bool>> m_isDones;
    std::atomic<bool> m_isDones[1000];
    int fileCount = 0;
    int internalCount = 0;
};
Singleton *Singleton::singletonInstance = 0;
std::mutex Singleton::m_;
std::default_random_engine generator;


std::string getRandomString(int length)
{
   
    std::uniform_int_distribution<int> distribution(0,length);
    std::string result;
    for(int i = 0; i < length; ++i)
    {
        result += 'a' + distribution(generator) % 26;
    }
    return result;
}

float randomFloat(float min, float max)
{
    std::uniform_int_distribution<int> distribution(min,max);
    return min + distribution(generator);
}



int main()
{

    // init random seed
    std::cout << "test \n";


    Singleton::getSingletonInstance()->loadFromDirectory("./Data", 0);


    while(Singleton::getSingletonInstance()->isDone())
    {
        std::cout << "loading \n";
    }

    std::cout << "loaded \n";




    std::string tName ;
    std::cin >> tName;

    tFile t = Singleton::getSingletonInstance()->getFileByName(tName);

    for (int i = 0 ; i < t.data.size(); ++i)
    {
        std::cout << t.data[i] << "\n";
    }


    // tFile t = Singleton::getSingletonInstance()->getSpriteByName(tName);
    // for (auto & line : t.data)
    // {
    //     std::cout << line << "\n";
    // }

    return 0;
}


