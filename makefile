name=daiqin-first6s
# python=python -m debugpy --wait-for-client --listen 5678
python=python
run:
	$(python) humor/fitting/run_fitting.py @./configs/fit_rgb_demo_no_split.cfg --data-path data/rgb_demo/$(name).mp4 --out ./out/$(name)
viz:
	$(python) humor/fitting/viz_fitting_rgb.py  --results out/$(name)/results_out --out out/$(name)/viz_out --viz-prior-frame
my:
	$(python) humor/my.py
clean:
	rm -rf out/$(name)