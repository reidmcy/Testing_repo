notebooks: 1-intro.ipynb 2-Corpus-Linguistics.ipynb 3-Clustering-and-Topic-Modeling.ipynb 4-Word-Embedding.ipynb

html: 1-intro.html 2-Corpus-Linguistics.html 3-Clustering-and-Topic-Modeling.html 4-Word-Embedding.html

all: notebooks html

1: 1-intro.html

2: 2-Corpus-Linguistics.html

3: 3-Clustering-and-Topic-Modeling.html

4: 4-Word-Embedding.html

7: 7-NLP.ipynb

8: 8-Semantic-Networks.ipynb

1-intro.ipynb: 1-intro.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@
	rm notebooks/wikipedia_content_analysis.html
	rm notebooks/sometextfile.txt
	rm notebooks/lolcat.gif
	rm notebooks/data/temp.docx

1-intro.html: 1-intro.ipynb
	jupyter nbconvert --to html --output=../html/$@ notebooks/$<

2-Corpus-Linguistics.ipynb: 2-Corpus-Linguistics.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@

2-Corpus-Linguistics.html: 2-Corpus-Linguistics.ipynb
	jupyter nbconvert --to html --output=../html/$@ notebooks/$<

3-Clustering-and-Topic-Modeling.ipynb: 3-Clustering-and-Topic-Modeling.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@

3-Clustering-and-Topic-Modeling.html: 3-Clustering-and-Topic-Modeling.ipynb
	jupyter nbconvert --to html --output=../html/$@ notebooks/$<

4-Word-Embedding.ipynb: 4-Word-Embedding.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@

4-Word-Embedding.html: 4-Word-Embedding.ipynb
	jupyter nbconvert --to html --output=../html/$@ notebooks/$<

7-NLP.ipynb: 7-NLP.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@

8-Semantic-Networks.ipynb: 8-Semantic-Networks.md
	notedown -o notebooks/$@ $<
	jupyter nbconvert --to notebook --execute --allow-errors --output=$@ notebooks/$@
