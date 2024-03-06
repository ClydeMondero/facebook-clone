<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:attribute name="style">margin: 0; padding: 0; font-family: sans-serif; font-weight: 400</xsl:attribute>
                    <div id="wrapper">
                        <xsl:attribute name="style">display: flex; justify-content: center; align-items: center; flex-direction: column; background-color: F6F5F5</xsl:attribute>
                        <div>
                            <xsl:attribute name="style">height: 80px; width: 100%; background-color: black; color: white;</xsl:attribute>
                            <h1>
                            <xsl:attribute name="style">margin-left: 4rem;</xsl:attribute>
                            LinkUp
                            </h1>
                        </div>
                        <div>
                            <xsl:attribute name="style">display: flex; justify-content start; align-items: center; font-weight: 400; color: rgba(0,0,0,0.2); height: .8rem; width: 50%; padding: 1.3rem; border-radius: 50px; margin-top: 1rem; background-color: white; box-shadow:3px 3px 20px rgba(0,0,0,0.2);</xsl:attribute>
                            <h4>New Post</h4>
                        </div>
                        <xsl:for-each select="posts/post">
                        <div id="content">
                            <xsl:attribute name="style">height: 55%; width: 55%; background-color: white; border-radius: 1.5rem; box-shadow:3px 3px 20px rgba(0,0,0,0.2); margin-top: 1.5rem;</xsl:attribute>
                            <div id="user-profile">
                                <xsl:attribute name="style">display:flex; justify-content: start; align-items: center;</xsl:attribute>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="displayPicture"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="style">height: 2rem; width: 2rem; padding: 1.5rem; border-radius: 50%;</xsl:attribute>
                                </img>
                                <h4><xsl:value-of select="author"/></h4>
                            </div>
                            <div>
                                <xsl:attribute name="style">width: 100%; height: 40px; display: flex; justify-content: center; align-items: center;</xsl:attribute>
                                <h4>
                                    <xsl:attribute name="style">font-weight: 500; font-size: 1rem; text-align: center; padding-bottom: 1rem;</xsl:attribute>
                                    <xsl:value-of select="caption"/>
                                </h4>
                            </div>
                            <div id="post">
                                <xsl:attribute name="style">display:flex; justify-content: center; align-items: center; flex-direction: column;</xsl:attribute>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="postPicture"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="style">height: 30%; width: 80%;</xsl:attribute>
                                </img>
                            </div>
                            <div id="buttons">
                                <xsl:attribute name="style">height: 3rem; display: flex; justify-content: space-between; align-items: center; padding: 0.5rem 1.5rem 0.5rem 1.5rem</xsl:attribute>
                                <div id="left">
                                    <xsl:attribute name="style">display: flex; justify-content: space-between; align-items:center;</xsl:attribute>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="reaction-icon"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="style">height: 1rem;</xsl:attribute>
                                    </img>
                                    <button id="reactions">
                                        <xsl:attribute name="style">background-color: transparent; border: none;</xsl:attribute>
                                        <xsl:value-of select="reactions"/>
                                    </button>
                                </div>
                                <div id="right">
                                    <xsl:attribute name="style">display: flex; </xsl:attribute>
                                    <div>
                                        <xsl:attribute name="style">display: flex; align-items: center;</xsl:attribute>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="comment-icon"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="style">height: 1rem;</xsl:attribute>
                                        </img>
                                        <button id="comments">
                                            <xsl:attribute name="style">background-color: transparent; border: none;</xsl:attribute>
                                            <xsl:value-of select="comments"/>
                                        </button>
                                    </div>
                                    <div>
                                        <xsl:attribute name="style">display: flex; align-items: center</xsl:attribute>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="share-icon"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="style">height: 1rem;</xsl:attribute>
                                        </img>
                                        <button id="shares">
                                            <xsl:attribute name="style">background-color: transparent; border: none;</xsl:attribute>
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