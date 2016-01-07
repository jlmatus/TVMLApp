/*
I'm just copying this from apple and modifying it a little bit 
I deleted <relatedContent>
*/
var Template = function() { return `<?xml version="1.0" encoding="UTF-8" ?>
<document>
<head>
<style> 
    .main {
        background-color: #ffffff;
}
</style>
</head>
  <listTemplate class="main">
    <banner>
      <background>
        <img src="${this.BASEURL}resources/apple-tv-banner.png" width="1920" height="360" />
      </background>
    </banner>
    <list>
      
      <section>
        <header>
          <title>Movies</title>
        </header>
        <listItemLockup vidUrl="${this.BASEURL}resources/appleTVMovies.mov">
          <title>Popular Movies App</title>
          <relatedContent>
            <lockup>
              <img src="${this.BASEURL}resources/popular-movies.png" width="857" height="482" />
              <title>Popular Moviest</title>
              <subtitle>From Movie DB</subtitle>
              <description>An apple TV App that list the popular movies</description>
            </lockup>
          </relatedContent>
        </listItemLockup>
        <listItemLockup vidUrl="${this.BASEURL}resources/sample03.mov">
          <title>Sample 02</title>
          <relatedContent>
            <lockup>
              <img src="${this.BASEURL}resources/apple-30-year-celebration.jpg" width="857" height="482" />
              <title>Another Video Sample</title>
              <subtitle>Related Subtitle 2</subtitle>
              <description>This is another video Sample, really short. </description>
            </lockup>
          </relatedContent>
        </listItemLockup>
        <listItemLockup vidUrl="https://s3-us-west-2.amazonaws.com/devslopesvideo/app-icon-photoshop.mp4">
          <title>Title 3</title>
          <relatedContent>
            <lockup>
              <img src="${this.BASEURL}resources/photoshop-app-icon.png" width="857" height="482" />
              <title>tvOS App Icon</title>
              <subtitle>With 3D effects</subtitle>
              <description>A video from devslopes on how to make a parallax app icon. This video is streamed from a remote location.</description>
            </lockup>
          </relatedContent>
        </listItemLockup>
        
      </section>
    </list>
  </listTemplate>
</document>`
}
