#Hawooo
#don't change,DICKHEAD!!
#!/bin/bash

green='\033[1;32m'
cyan='\033[1;36m'
pink='\033[1;35m'
blue='\033[1;34m'
white='\033[1;37m'
yellow='\033[1;33m'
gray='\033[1;30m'
red='\033[1;31m'
reset='\033[0m'

now=$(date +"%d-%m-%Y %H:%M:%S")
output_dir="/storage/emulated/0/Download"


prompt() {
  echo -e "${cyan}┌─╼[${yellow}BE12U-${cyan}]-[~]"
  echo -ne "${cyan}└────╼ ❯❯❯ ${reset}"
}


clear
echo -e "
${green}███████╗██╗███╗   ███╗ █████╗ ███╗   ██╗████████╗███████╗██████╗
${green}██╔════╝██║████╗ ████║██╔══██╗████╗  ██║╚══██╔══╝██╔════╝██╔══██╗
${blue}███████╗██║██╔████╔██║███████║██╔██╗ ██║   ██║   █████╗  ██████╔╝
${blue}╚════██║██║██║╚██╔╝██║██╔══██║██║╚██╗██║   ██║   ██╔══╝  ██╔═══╝
${blue}███████║██║██║ ╚═╝ ██║██║  ██║██║ ╚████║   ██║   ███████╗██║
${gray}╚══════╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝
"

echo -e "${pink}╭────────────────────────────────────────────────────────────╮"
echo -e "${yellow}│  ${green}SIMANTEP v1.2                                             ${yellow}│"
echo -e "${yellow}│  ${cyan}Waktu  ${white}: ${now}                              ${yellow}│"
echo -e "${yellow}│  ${pink}Author ${white}: beruu27                                          ${yellow}│"
echo -e "${pink}╰────────────────────────────────────────────────────────────╯"


echo -e "${cyan}╭──────────── MENU PILIHAN ─────────────╮"
echo -e "${cyan}│ ${yellow}[1]${reset} Download dari ${red}Yutup${reset}               ${cyan}│"
echo -e "${cyan}│ ${yellow}[2]${reset} Download dari ${green}Instagram${reset}           ${cyan}│"
echo -e "${cyan}│ ${yellow}[3]${reset} Download dari ${blue}Pesnuk${reset}              ${cyan}│"
echo -e "${cyan}│ ${yellow}[4]${reset} Download dari ${gray}Tiktod${reset}              ${cyan}│"
echo -e "${cyan}│ ${yellow}[0]${reset} Keluar                            ${cyan}│"
echo -e "${cyan}╰───────────────────────────────────────╯${reset}"

prompt
read -p "Pilih menu [1-4/0]: " menu

progress_bar() {
  echo -ne "${blue}┌─ Mengunduh media... wait brookk ─┐${reset}\n"
  bar="▱▰▱▰▱▰▱▰▱▰"
  for i in {1..3}; do
    echo -ne "[${bar}] \r"
    sleep 0.3
  done
}


case $menu in
  1)
    prompt; echo -n "Masukkan URL yutup: "
    read url
    echo -e "\nPilih kualitas:"
    echo -e "${yellow}[1]${reset} Otomatis terbaik"
    echo -e "${yellow}[2]${reset} 720p"
    echo -e "${yellow}[3]${reset} 480p"
    echo -e "${yellow}[4]${reset} Audio only (MP3)"
    prompt; read -p "Pilihan [1-4]: " q

    case $q in
      1) format="bv+ba/b" ;;
      2) format="bestvideo[height<=720]+bestaudio/best[height<=720]" ;;
      3) format="bestvideo[height<=480]+bestaudio/best[height<=480]" ;;
      4)
        progress_bar
        yt-dlp -x --audio-format mp3 -o "${output_dir}/%(title)s.%(ext)s" "$url"
        echo -e " ${green}[✔]${reset} Audio disimpan di ${output_dir}"
        exit
        ;;
      *) echo -e "${red}Pilihan tidak valid.${reset}"; exit ;;
    esac

    progress_bar
    yt-dlp -f "$format" -o "${output_dir}/%(title)s.%(ext)s" "$url"
    echo -e " ${green}[✔]${reset} Selesai! File tersimpan di ${output_dir}"
    ;;
  2)
    prompt; echo -n "Masukkan URL Instagram: "
    read url
    progress_bar
    yt-dlp -f best -o "${output_dir}/%(title)s.%(ext)s" "$url"
    echo -e " ${green}[✔]${reset} Selesai! File tersimpan di ${output_dir}"
    ;;
  3)
    prompt; echo -n "Masukkan URL Pesnuk: "
    read url
    progress_bar
    yt-dlp -f best -o "${output_dir}/%(title)s.%(ext)s" "$url"
    echo -e " ${green}[✔]${reset} Selesai! File tersimpan di ${output_dir}"
    ;;
  4)
    prompt; echo -n "Apus Aja ni apk njg: "
    read url
    progress_bar
    yt-dlp -f best -o "${output_dir}/%(title)s.%(ext)s" "$url"
    echo -e " ${green}[✔]${reset} ${red}Selesai! File tersimpan di ${output_dir}"
    ;;
  0)
    echo -e "${red}Keluar dari SIMANTEP...${reset}"
    exit
    ;;
  *)
    echo -e "${red}input yang bener kocak akwoskoak${reset}"
    ;;
esac

