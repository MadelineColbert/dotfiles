if command -v pip &> /dev/null; then
	pip install uv &> /dev/null
	alias uv="python3 -m uv" >> ~/.bashrc
fi
