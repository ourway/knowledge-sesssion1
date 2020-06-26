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

dis:
	@.venv/bin/python3 -c 'from dis import dis;from kmeans import k_means;print(dis(k_means));'

profile:
	@.venv/bin/python3 -c "from kmeans import k_means;import cProfile;cProfile.run('k_means([(1, 1, 1), (2, 2, 30), (3, 3, 3)], k=3, iterations=1)')"

calls:
	@.venv/bin/python3 -m cProfile kmeans.py | egrep -i "function calls"
