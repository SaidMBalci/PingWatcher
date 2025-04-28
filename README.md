# 📡 PingWatcher

Ein einfaches Bash-Skript zur Überwachung der Erreichbarkeit von IP-Adressen im lokalen Netzwerk und im Internet


---


## 🚀 Funktionen

- Überprüft eine Liste von IP-Adressen per Ping
- Farbliche Statusausgabe im Terminal (Grün = erreichbar, Rot = nicht erreichbar)
- Speichert alle Ergebnisse mit Zeitstempel in einer logdatei
- Unterstützt lokale Netzwerk-IPs sowie externe DNS-Server
- Einfache Erweiterbarkeit


---


## 🛠️ Benutzung

1. IP-Adressen im Skript anpassen
   - Öffnen Sie die Datei pingwatcher.sh in einem Editor
   - Passen Sie die Liste der IP-Adresen (IPS) an Ihr eigenes Netzwerk an:
       IPS=("8.8.8.8" "1.1.1.1" "192.168.178.118" "192.168.178.1")
   - Ersetzen Sie die lokalen IPs (192.168.x.x) durch die IPs Ihrer Geräte (PC, Router usw.) 
2. Terminal öffnen
3. Skript ausführen

```bash
bash pingwatcher.sh
```
4. Ergebnisse prüfen:
    - Die Resultate werden in der Datei log/pingwatcher.log gespeichert