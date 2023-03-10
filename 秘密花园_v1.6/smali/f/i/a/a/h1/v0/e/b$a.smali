.class public abstract Lf/i/a/a/h1/v0/e/b$a;
.super Ljava/lang/Object;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lf/i/a/a/h1/v0/e/b$a;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$a;->c:Lf/i/a/a/h1/v0/e/b$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/v0/e/b$a;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/v0/e/b$a;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$a;->c:Lf/i/a/a/h1/v0/e/b$a;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/v0/e/b$a;->l(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_b

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/v0/e/b$a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5
    invoke-virtual {p0, v2}, Lf/i/a/a/h1/v0/e/b$a;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/h1/v0/e/b$a;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v5, p0, Lf/i/a/a/h1/v0/e/b$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/v0/e/b$a;->k(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_b

    if-lez v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0, v2}, Lf/i/a/a/h1/v0/e/b$a;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/v0/e/b$a;->k(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 12
    :cond_6
    iget-object v5, p0, Lf/i/a/a/h1/v0/e/b$a;->a:Ljava/lang/String;

    const-string v6, "QualityLevel"

    .line 13
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 14
    new-instance v3, Lf/i/a/a/h1/v0/e/b$d;

    invoke-direct {v3, p0, v5}, Lf/i/a/a/h1/v0/e/b$d;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v6, "Protection"

    .line 15
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 16
    new-instance v3, Lf/i/a/a/h1/v0/e/b$c;

    invoke-direct {v3, p0, v5}, Lf/i/a/a/h1/v0/e/b$c;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v6, "StreamIndex"

    .line 17
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 18
    new-instance v3, Lf/i/a/a/h1/v0/e/b$f;

    invoke-direct {v3, p0, v5}, Lf/i/a/a/h1/v0/e/b$f;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V

    :cond_9
    :goto_1
    if-nez v3, :cond_a

    const/4 v1, 0x1

    goto :goto_2

    .line 19
    :cond_a
    invoke-virtual {v3, p1}, Lf/i/a/a/h1/v0/e/b$a;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lf/i/a/a/h1/v0/e/b$a;->a(Ljava/lang/Object;)V

    .line 20
    :cond_b
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    :cond_c
    return-object v3
.end method

.method public f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method public final g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lf/i/a/a/h0;

    invoke-direct {p2, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return p3
.end method

.method public final h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lf/i/a/a/h0;

    invoke-direct {p2, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-wide p3
.end method

.method public final i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lf/i/a/a/h0;

    invoke-direct {p2, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    new-instance p1, Lf/i/a/a/h1/v0/e/b$b;

    invoke-direct {p1, p2}, Lf/i/a/a/h1/v0/e/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h1/v0/e/b$b;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lf/i/a/a/h1/v0/e/b$b;

    invoke-direct {p1, p2}, Lf/i/a/a/h1/v0/e/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation
.end method

.method public l(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method
