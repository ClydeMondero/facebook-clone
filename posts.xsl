<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <xsl:attribute name="style">margin: 0; padding: 0; font-family: sans-serif; font-weight: 400</xsl:attribute>
                    <div id="wrapper">
                        <xsl:attribute name="style">display: flex; justify-content: center; align-items: center; flex-direction: column; background-color: #18191A</xsl:attribute>
                        <div>
                            <xsl:attribute name="style">display: flex; justify-content: space-between; align-items: center; height: 80px; width: 100%; background-color: #242526; color: white;</xsl:attribute>
                            <h1>
                                <xsl:attribute name="style">font-size: 1.6rem; padding: 0 3rem;</xsl:attribute>
                                <img src="images/link.svg" alt="" height= "30px"/>
                                LinkUp
                            </h1>
                            <div>
                                <xsl:attribute name="style">display: flex;</xsl:attribute>
                                <img src="images/angelo.jpg" alt="" height="40px">
                                    <xsl:attribute name="style">border-radius:50%;</xsl:attribute>
                                </img>
                                <p>
                                    <xsl:attribute name="style">font-weight: 600; padding: 0 2rem 0 10px</xsl:attribute>
                                    Angelo
                                </p>
                            </div>
                        </div>
                        <div>
                            <xsl:attribute name="style"> font-weight: 300; height: 100%; width: 54%; min-width: 330px; border-radius: 25px; margin-top: 1rem; background-color: #272829; box-shadow:3px 3px 20px rgba(0,0,0,0.2); padding: 0.5rem</xsl:attribute>
                            <div>
                                <xsl:attribute name="style">font-weight: 300; color: #ACAFB3; margin-left: 1rem</xsl:attribute>
                                <h4>What's on your mind?</h4>
                            </div>
                            <div>
                                <xsl:attribute name="style">font-weight: 300; display: flex; height: 30px;</xsl:attribute>
                                <div id="live">
                                    <xsl:attribute name="style">width: 100%; display: flex; justify-content: center; align-items: center; gap: .5rem; color: #C04949</xsl:attribute>
                                    <img src="images/live.png" alt="" height = "30px"/>
                                    <h4>Live</h4>
                                </div>
                                <hr>
                                    <xsl:attribute name="style">border-color: #A8ABAF</xsl:attribute>
                                </hr>
                                <div id="photo/video">                                          
                                    <xsl:attribute name="style">width: 100%; display: flex; justify-content: center; align-items: center; gap: .6rem; color: #45BD62</xsl:attribute>
                                    <img src="images/media (1).png" alt="" height = "20px"/>
                                    <h4>Photo/Video</h4>
                                </div>
                            </div>
                        </div>
                        <xsl:for-each select="posts/post">
                        <div id="content">
                            <xsl:attribute name="style">height: 55%; width: 55%; min-width: 350px; background-color: #272829; color: white; border-radius: 1.5rem; box-shadow:3px 3px 50px rgba(0,0,0,0.1); margin-top: 1rem;</xsl:attribute>
                            <div id="user-profile">
                                <xsl:attribute name="style">display:flex; justify-content: start; align-items: start;</xsl:attribute>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="displayPicture"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="style">height: 2rem; width: 2rem; padding: 1.5rem; border-radius: 50%;</xsl:attribute>
                                </img>
                                <div>
                                    <xsl:attribute name="style">display:flex; flex-direction:column;</xsl:attribute>
                                    <h4>
                                        <xsl:value-of select="author"/>
                                    </h4>
                                    <p>
                                        <xsl:attribute name="style">font-size: 0.8rem; color: #A8ABAF; position: relative; top: -1.5rem;</xsl:attribute>
                                        <xsl:value-of select="time"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="access"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="style">padding-left: 0.4rem; height: 0.8rem; width: 0.8rem;</xsl:attribute>
                                        </img>
                                    </p>
                                </div>
                            </div>
                            <div>
                                <xsl:attribute name="style">width: 100%; height: 40px; display: flex; justify-content: start; align-items: center;</xsl:attribute>
                                <h4>
                                    <xsl:attribute name="style">font-weight: 500; font-size: 1rem; text-align: left; padding: 1rem; padding-bottom: 2rem;</xsl:attribute>
                                    <xsl:value-of select="caption"/>
                                </h4>
                            </div>
                            <div id="post">
                                <xsl:attribute name="style">display:flex; justify-content: center; align-items: center; flex-direction: column; background-color: black;</xsl:attribute>
                                <xsl:if test="type='picture'">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="content"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="style">height: 100%; width: 80%;</xsl:attribute>
                                    </img>
                                </xsl:if>
                                <xsl:if test="type='video'">
                                    <video>
                                        <xsl:attribute name="style">width: 50%; height: 50%;</xsl:attribute>
                                        <xsl:attribute name="src"><xsl:value-of select="content"/></xsl:attribute>
                                        <xsl:attribute name="autoplay"></xsl:attribute>
                                        <xsl:attribute name="muted"></xsl:attribute>
                                        <xsl:attribute name="controls"></xsl:attribute>
                                    </video> 
                                </xsl:if>
                            </div>
                            <div id="buttons">
                                <xsl:attribute name="style">height: 3rem; display: flex; justify-content: space-between; align-items: center; padding: 0.5rem 1.5rem 0.5rem 1.5rem</xsl:attribute>
                                <div id="left">
                                    <xsl:attribute name="style">display: flex; justify-content: space-between; align-items:center; cursor: pointer</xsl:attribute>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="reaction-icon"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="style">height: 1rem;</xsl:attribute>
                                    </img>
                                    <button id="reactions">
                                        <xsl:attribute name="style">background-color: transparent; color: #ACAFB3; border: none;</xsl:attribute>
                                        <xsl:value-of select="reactions"/>
                                    </button>
                                </div>
                                <div id="right">
                                    <xsl:attribute name="style">display: flex; gap: 1rem;</xsl:attribute>
                                    <div>
                                        <xsl:attribute name="style">display: flex; align-items: center; cursor: pointer</xsl:attribute>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="comment-icon"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="style">height: 1rem;</xsl:attribute>
                                        </img>
                                        <button id="comments">
                                            <xsl:attribute name="style">background-color: transparent; color: #ACAFB3; border: none;</xsl:attribute>
                                            <xsl:value-of select="comments"/>
                                        </button>
                                    </div>
                                    <div>
                                        <xsl:attribute name="style">display: flex; align-items: center; cursor: pointer;</xsl:attribute>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="share-icon"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="style">height: 1.2rem;</xsl:attribute>
                                        </img>
                                        <button id="shares">
                                            <xsl:attribute name="style">background-color: transparent;  color: #ACAFB3; border: none;</xsl:attribute>
                                            <xsl:value-of select="shares"/>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>