// Please make a script that generates a table of favorite albums in the README.md file for me.

import { readFileSync, writeFileSync } from 'fs';
import { execSync } from 'child_process';

/**
 * @typedef {{title: string, link: string, cover: string}} Album
 * @type {Album[]}
 */
const albums = JSON.parse(execSync(
    'typst query albums.typ "<albums>" --field value --one'
))

const updateReadme = () => {
    const albumTitles = [albums[0]].map(album => `[${album.title}](${album.link})`).join('|');
    const albumAlignments = [albums[0]].map(_album => ":-:").join('|');
    const albumCovers = [albums[0]].map(album => `<img src="${album.cover}" alt="${album.title}" width="640">`).join('|');

    const table = `|${albumTitles}|[And More](./Albums.md)|\n|${albumAlignments}|:-:|\n|${albumCovers}|[And More](./Albums.md)|`;

    const content = readFileSync('README.md', 'utf-8');
    const updatedContent = content.replace(/<!-- begin-fav-albums -->[\s\S]*<!-- end-fav-albums -->/, `<!-- begin-fav-albums -->\n${table}\n<!-- end-fav-albums -->`);
    console.log('Updating README.md...');
    writeFileSync('README.md', updatedContent, 'utf-8');
};

const updateAlbums = () => {
    const albumTitles = albums.map(album => `|[${album.title}](${album.link})|`);
    const albumCovers = albums.map(album => `|<img src="${album.cover}" alt="${album.title}" width="640">|`);

    const rows = albumTitles.map((title, idx) => [title, albumCovers[idx]]).flat();
    const table = [rows[0], '|:-:|', ...rows.slice(1)].join('\n');

    const content = readFileSync('Albums.md', 'utf-8');
    const updatedContent = content.replace(/<!-- begin-fav-albums -->[\s\S]*<!-- end-fav-albums -->/, `<!-- begin-fav-albums -->\n${table}\n<!-- end-fav-albums -->`);
    console.log('Updating Albums.md...');
    writeFileSync('Albums.md', updatedContent, 'utf-8');
};

updateReadme();
updateAlbums();

