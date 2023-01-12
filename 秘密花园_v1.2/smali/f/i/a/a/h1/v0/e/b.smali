.class public Lf/i/a/a/h1/v0/e/b;
.super Ljava/lang/Object;
.source "SsManifestParser.java"

# interfaces
.implements Lf/i/a/a/l1/e0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/v0/e/b$d;,
        Lf/i/a/a/h1/v0/e/b$f;,
        Lf/i/a/a/h1/v0/e/b$c;,
        Lf/i/a/a/h1/v0/e/b$e;,
        Lf/i/a/a/h1/v0/e/b$a;,
        Lf/i/a/a/h1/v0/e/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/e0$a<",
        "Lf/i/a/a/h1/v0/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/v0/e/b;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lf/i/a/a/h1/v0/e/b$e;

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lf/i/a/a/h1/v0/e/b$e;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Lf/i/a/a/h1/v0/e/b$a;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/v0/e/a;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lf/i/a/a/h0;

    invoke-direct {p2, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
