#!/bin/bash

DIR=$1
SESSION="portefaix"

echo $#
if [ $# -eq 0 ]; then
	echo "Usage: `basename $0` <directory>"
	exit 0
fi

function tmux_portefaix {
    cd $DIR
    tmux start-server
    tmux new-session -s $SESSION -n Lam -d
    tmux new-window -n "dot"
    tmux send-keys -t $SESSION "cd $DIR/dotfiles/" C-m
    tmux new-window -n "Hestia"
    tmux send-keys -t $SESSION "cd $DIR/hestia/" C-m
    tmux new-window -n "Hyperion-k8s"
    tmux send-keys -t $SESSION "cd $DIR/hyperion-k8s" C-m
    tmux new-window -n "Hyperion-nomad"
    tmux send-keys -t $SESSION "cd $DIR/hyperion-nomad" C-m
    tmux new-window -n "Hyperion-swarm"
    tmux send-keys -t $SESSION "cd $DIR/hyperion-swarm" C-m
    tmux new-window -n "Hyperion-rancher"
    tmux send-keys -t $SESSION "cd $DIR/hyperion-rancher" C-m
    tmux new-window -n "Cerbere"
    tmux send-keys -t $SESSION "cd $DIR/cerbere" C-m
    tmux new-window -n "Warhol"
    tmux send-keys -t $SESSION "cd $DIR/warhol" C-m
    tmux new-window -n "Cirrus"
    tmux send-keys -t $SESSION "cd $DIR/cirrus" C-m
    tmux new-window -n "Hyperkube"
    tmux send-keys -t $SESSION "cd $DIR/hyperkube" C-m
    tmux new-window -n "Base"
    tmux send-keys -t $SESSION "cd $DIR/docker-base" C-m
    tmux new-window -n "Elasticsearch"
    tmux send-keys -t $SESSION "cd $DIR/docker-elasticsearch" C-m
    tmux new-window -n "Kibana"
    tmux send-keys -t $SESSION "cd $DIR/docker-kibana" C-m
    tmux new-window -n "Grafana"
    tmux send-keys -t $SESSION "cd $DIR/docker-grafana" C-m
    tmux new-window -n "InfluxDB"
    tmux send-keys -t $SESSION "cd $DIR/docker-influxdb" C-m
    tmux new-window -n "Heka"
    tmux send-keys -t $SESSION "cd $DIR/docker-heka" C-m
    tmux new-window -n "Packetbeat"
    tmux send-keys -t $SESSION "cd $DIR/docker-packetbeat" C-m
    tmux new-window -n "Clair"
    tmux send-keys -t $SESSION "cd $DIR/docker-clair" C-m
    tmux new-window -n "Vault"
    tmux send-keys -t $SESSION "cd $DIR/docker-vault" C-m

	tmux attach-session -t $SESSION
}

tmux_portefaix
