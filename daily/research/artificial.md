
# Youtube Channels
 - [ IBM Technoloty YT Channel ](https://www.youtube.com/@IBMTechnology/videos)
 - [ Julia Turc advanced YT Channel ](https://www.youtube.com/@juliaturc1/playlists)
 - [ Llama.cpp  IBM Technoloty YT ](https://www.youtube.com/watch?v=P8m5eHAyrFM)

# Local ollama  
 - [ Linux Step by step guide ](https://medium.com/open-webui-mastery/build-your-local-ai-from-zero-to-a-custom-chatgpt-interface-with-ollama-open-webui-6bee2c5abba3)
 - [ Pahautelman.github.io Linux Ollama - OpenWebUI](https://pahautelman.github.io/pahautelman-blog/tutorials/build-your-local-ai/build-your-local-ai/)
 - [ MacOS ](https://pahautelman.github.io/pahautelman-blog/tutorials/build-your-local-ai/build-your-local-ai/) 
 - [ YT - Reverse Engineering GGUF - Quantization ](https://www.youtube.com/watch?v=vW30o4U9BFE)

# Chinese open model
```
sudo apt install npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash   
source ~/.bashrc 
nvm install 22
nvm --version
npx @qwen-code/qwen-code@latest
```

# Apps : 
  Lmstudio (commercial)
  GPT4ALL , Koboldcpp , LocalAI , Ollama , Open-WebUI , llama.cpp , Jan.ai, koboldcpp (opensource)

 - [ LMStudio](https://lmstudio.ai/)
 - [ LMStudio Tutorial](https://www.datacamp.com/tutorial/lm-studio)
 - [ llama.cpp](https://github.com/ggml-org/llama.cpp)
 - [ Voice Assistance + WebUI ](https://github.com/maxi1134/Home-Assistant-Config/blob/master/documentation/guides/voice_assistance_guide_open_webui.md)
 - [ Running QWEN3-coder  ](https://unsloth.ai/docs/models/tutorials/qwen3-coder-how-to-run-locally)
 - [ koboldcpp gguf and ggml (.bin) models ](https://koboldai.com/)
 - [ kolosalai ](https://github.com/KolosalAI/Kolosal)
 - [ Linux Docker llama.cpp setup](https://lindevs.com/run-llama-cpp-inside-docker-container-on-linux)

```

# Table 1.a
Category             Best Use Case  VRAM 
---------------------------------------------
Llama 3.3 70B        general tasks  ~40-43 GB
Qwen 2.5 Coder 32B   code           ~20-22 GB
Kimi K 2.6           code           ~16 GB
gpt-oss:20b          code           ~16 GB
Gemma 4 E4B          code           ~8 GB
Qwen3.5 9b           code           ~8 GB
OmniCoder 9b         code           ~8 GB
Llama 3.1 8B         General        ~5-6 GB
Nomic Embed Text     RAG            ~0.5 GB
Llama 3.2 Vision 11B Image          ~8 GB
Orca-mini 3B                        ~8 GB
Phi-4 Mini (3.8B)                   ~3-4 GB 
Llama 3.2 3B                        ~3-4 GB
Gemma 4 E2B                         ~2 GB
Gemma 3 1B                          ~2 GB
Qwen3.5 0.8B/2B      code           ~2 GB
Gemma 4 E4B                         ~3 GB 
---------------------------------------------
```

Table 1.b
```
RAM         What models run comfortably
----------------------------------------
8 GB        Small models 1B - 4B
16GB        Mid Size     7B - 9B
32GB+       Large       13B + 
```

 Ollama on docker
```
   docker run -d --gpus all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

Running Phi4-mini  model:  phi4-mini is fast and good low VRAM 4 GB 
```
   docker exec -it ollama ollama pull phi4-mini   
   docker exec -it ollama ollama run phi4-mini
```

llama.cpp : gemma4:e4b coding + only 8 GB VRAM
```
docker run --rm -it --gpus all \
       --name llama_server \
       -p 8080:8080 \
       -v ~/models:/models \     # hostpath  --volume ~/models : docker path /models
       ghcr.io/ggml-org/llama.cpp:server-cuda \
       --model /models/karpathy/tinyllamas  \
       --host 0.0.0.0 --port 8080 \
       --ctx-size 4096 \
       --threads 4 \
       --verbose
```

Host Path: ~/models is mounted into container with --volume / -v  Container Path: /models       
```
   docker run -d --name llama-gpu --gpus all -p 8080:8080 -v ~/models:/models ghcr.io/ggml-org/llama.cpp:server-cuda --model /models/mistral-7b-instruct-v0.2.Q4_K_M.gguf --host 0.0.0.0 --port 8080 --n-gpu-layers 99 --threads 4
```

hf app for downloading models
```
   pip install hf
```
search models  - will bring up many models
```
  hf models ls --search "tinyllama"
```

download model you want 
```
  mkdir ~/models/
  hf download karpathy/tinyllamas  --local-dir ~/models/
  hf download TinyLlama/TinyLlama-1.1B-Chat-v1.0 --local-dir ~/models/   ** not available June 28, 2026
```
 

# CMDS for running apps on cloud
```
   docker exec -it ollama run kimi-k2.6:cloud
   docker exec -it ollama launch claude --model kimi-k2.6:cloud 
   docker exec -it ollama launch codex-app --model kimi-k2.6:cloud 
   docker exec -it ollama launch openclaw  --model kimi-k2.6:cloud 
   docker exec -it ollama launch hermes  --model kimi-k2.6:cloud 
   docker exec -it ollama launch codex  --model kimi-k2.6:cloud 
   docker exec -it ollama launch opencode  --model kimi-k2.6:cloud 
```

# Docker install on Ubuntu 
```
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

Install NVIDIA Container Toolkit
```
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
```

Windows Model phi4-mini on ollama
```
 docker exec -it ollama ollama pull phi4-mini   
 docker exec -it ollama ollama run phi4-mini
```

Coding Model gemma4:e4b on ollama
```
 docker exec -it ollama ollama pull gemma4:e4b   
 docker exec -it ollama ollama run gemma4:e4b 
```

For web front end use Open WebUI
```
  docker run -d -p 3000:8080 --gpus=all \
     -v ollama:/root/.ollama -v open-webui:/app/backend/data \
     --name open-webui --restart always  ghcr.io/open-webui/open-webui:ollama
```

Ollama server and Open WebUI container
```
  docker run -d -p 3000:8080 --gpus=alli \
   --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data \
   -e OLLAMA_BASE_URL=http://host.docker.internal:11434 --name open-webui 
   --restart always ghcr.io/open-webui/open-webui:cuda   
```

Bare metal installs on Linux - not recommended for Ollama
```
curl -fsSL https://ollama.com/install.sh | sh   
ollama pull llama3.1:8b-instruct-fp16
ollama run llama3.1:8b-instruct-fp16
```

# docker commands
```
 docker ps -a        // lists all running docker containers
 docker stop  [ID]   // 
 docker rm [ID]      // removes old container
 docker run -d --gpus all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
 docker exec -it <container> /bin/bash
```

