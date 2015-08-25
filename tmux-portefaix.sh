#!/bin/bash

DIR=$1
SESSION="portefaix"

echo $#
if [ $# -eq 0 ]; then
	echo "Usage: $0 <directory>"
	exit 0
fi

function tmux_portefaix {
    cd $DIR
    tmux start-server
    tmux new-session -s $SESSION -n Lam -d
    tmux new-window -n "dot"
    tmux send-keys -t $SESSION "cd $DIR/portefaix-dotfiles/" C-m
    tmux new-window -n "Hyperion"
    tmux send-keys -t $SESSION "cd $DIR/hyperion" C-m
    tmux new-window -n "Hyperion-Services"
    tmux send-keys -t $SESSION "cd $DIR/hyperion-services" C-m
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

	tmux attach-session -t $SESSION
}

tmux_portefaix
