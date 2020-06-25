run:
	@.venv/bin/python3 kmeans.py

check:
	@.venv/bin/python3 -m mypy kmeans.py

slide:
	@~/.iterm2/imgcat slides/slide1.png && \
	    sleep 20 && \
	    ~/.iterm2/imgcat slides/slide2.png && \
	    sleep 30 && \
	     ~/.iterm2/imgcat slides/slide3.png && \
	    sleep 45 && \
	     ~/.iterm2/imgcat slides/slide4.png && \
	    sleep 10 && \
	     ~/.iterm2/imgcat slides/slide5.png
