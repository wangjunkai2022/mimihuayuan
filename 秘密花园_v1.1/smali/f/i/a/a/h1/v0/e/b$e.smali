.class public Lf/i/a/a/h1/v0/e/b$e;
.super Lf/i/a/a/h1/v0/e/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/v0/e/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:Z

.field public m:Lf/i/a/a/h1/v0/e/a$a;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "SmoothStreamingMedia"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lf/i/a/a/h1/v0/e/b$a;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lf/i/a/a/h1/v0/e/b$e;->k:I

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$e;->m:Lf/i/a/a/h1/v0/e/a$a;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$e;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lf/i/a/a/h1/v0/e/a$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$e;->e:Ljava/util/List;

    check-cast p1, Lf/i/a/a/h1/v0/e/a$b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Lf/i/a/a/h1/v0/e/a$a;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$e;->m:Lf/i/a/a/h1/v0/e/a$a;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 5
    check-cast p1, Lf/i/a/a/h1/v0/e/a$a;

    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$e;->m:Lf/i/a/a/h1/v0/e/a$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Lf/i/a/a/h1/v0/e/a$b;

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$e;->e:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$e;->m:Lf/i/a/a/h1/v0/e/a$a;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Lf/i/a/a/z0/e;

    const/4 v3, 0x1

    new-array v4, v3, [Lf/i/a/a/z0/e$b;

    new-instance v5, Lf/i/a/a/z0/e$b;

    iget-object v6, v1, Lf/i/a/a/h1/v0/e/a$a;->a:Ljava/util/UUID;

    iget-object v1, v1, Lf/i/a/a/h1/v0/e/a$a;->b:[B

    const-string v7, "video/mp4"

    invoke-direct {v5, v6, v7, v1}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    const/4 v5, 0x0

    .line 5
    invoke-direct {v2, v5, v3, v4}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 6
    aget-object v5, v13, v4

    .line 7
    iget v6, v5, Lf/i/a/a/h1/v0/e/a$b;->a:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    if-ne v6, v3, :cond_1

    .line 8
    :cond_0
    iget-object v5, v5, Lf/i/a/a/h1/v0/e/a$b;->j:[Lf/i/a/a/b0;

    const/4 v6, 0x0

    .line 9
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 10
    aget-object v7, v5, v6

    invoke-virtual {v7, v2}, Lf/i/a/a/b0;->a(Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Lf/i/a/a/h1/v0/e/a;

    iget v2, p0, Lf/i/a/a/h1/v0/e/b$e;->f:I

    iget v3, p0, Lf/i/a/a/h1/v0/e/b$e;->g:I

    iget-wide v4, p0, Lf/i/a/a/h1/v0/e/b$e;->h:J

    iget-wide v6, p0, Lf/i/a/a/h1/v0/e/b$e;->i:J

    iget-wide v8, p0, Lf/i/a/a/h1/v0/e/b$e;->j:J

    iget v10, p0, Lf/i/a/a/h1/v0/e/b$e;->k:I

    iget-boolean v11, p0, Lf/i/a/a/h1/v0/e/b$e;->l:Z

    iget-object v12, p0, Lf/i/a/a/h1/v0/e/b$e;->m:Lf/i/a/a/h1/v0/e/a$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lf/i/a/a/h1/v0/e/a;-><init>(IIJJJIZLf/i/a/a/h1/v0/e/a$a;[Lf/i/a/a/h1/v0/e/a$b;)V

    return-object v0
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    const-string v0, "MajorVersion"

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lf/i/a/a/h1/v0/e/b$e;->f:I

    const-string v0, "MinorVersion"

    .line 2
    invoke-virtual {p0, p1, v0}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lf/i/a/a/h1/v0/e/b$e;->g:I

    const-string v0, "TimeScale"

    const-wide/32 v1, 0x989680

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lf/i/a/a/h1/v0/e/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lf/i/a/a/h1/v0/e/b$e;->h:J

    const/4 v1, 0x0

    const-string v2, "Duration"

    .line 4
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iput-wide v2, p0, Lf/i/a/a/h1/v0/e/b$e;->i:J

    const-wide/16 v2, 0x0

    const-string v4, "DVRWindowLength"

    .line 7
    invoke-virtual {p0, p1, v4, v2, v3}, Lf/i/a/a/h1/v0/e/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/h1/v0/e/b$e;->j:J

    const/4 v2, -0x1

    const-string v3, "LookaheadCount"

    .line 8
    invoke-virtual {p0, p1, v3, v2}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lf/i/a/a/h1/v0/e/b$e;->k:I

    const/4 v2, 0x0

    const-string v3, "IsLive"

    .line 9
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 11
    :cond_0
    iput-boolean v2, p0, Lf/i/a/a/h1/v0/e/b$e;->l:Z

    .line 12
    iget-wide v1, p0, Lf/i/a/a/h1/v0/e/b$e;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    new-instance p1, Lf/i/a/a/h1/v0/e/b$b;

    invoke-direct {p1, v2}, Lf/i/a/a/h1/v0/e/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
