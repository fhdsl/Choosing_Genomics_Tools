
[Follow the Wiki instructions here](https://github.com/jhudsl/OTTR_Template/wiki/Start-editing-your-course) for details on how to complete the items in this issue.

The following files need to be edited to get this new course started!

### Files that need edited upon creating a new course.

- [ ] `README.md` - Fill in all the `{ }`.
- [ ] `index.Rmd` - `title:` should be updated.
- [ ] `01-intro.Rmd` - replace the information there with information pertinent to this new course.
- [ ] `02-chapter_of_course.Rmd` - This Rmd has examples of how to set things up, if you don't need it as a reference, it can be deleted.

### Files that need to be edited upon adding each new chapter (including upon creating a new course):

- [ ] `_bookdown.yml` - The list of Rmd files that need to be rendered needs to be updated. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-with-Bookdown).
- [ ] `book.bib` - any citations need to be added. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Citations).

### Picking a style

See more [about customizing style on this page in the guide](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-&-Customize-style).
By default this course template will use the jhudsl data science lab style. However, you can customize and switch this to another style set.

#### Using a style set

[Read more about the style sets here](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-&-Customize-style#using-a-style-set).

- [ ] On a new branch, copy the `style-sets/<set-name>/index.Rmd` and `style-sets/<set-name>/_output.yml` to the top of the repository to overwrite the default `index.Rmd` and `_output.yml`.
- [ ] Copy over all the files in the `style-sets/<set-name>/copy-to-assets` to the `assets` folder in the top of the repository.
- [ ] [Create a pull request](https://github.com/jhudsl/OTTR_Template/wiki/Start-editing-your-course#getting-started-with-the-github-workflow) with these changes, and double check the rendered preview to make sure that the style is what you are looking for.

### Files that need to be edited upon adding new packages that the book's code uses:

- `docker/Dockerfile` needs to have the new package added so it will be installed. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Using-Docker#starting-a-new-docker-image).
- The code chunk in `index.Rmd` should be edited to add the new package.
