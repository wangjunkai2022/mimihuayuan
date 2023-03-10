.class public Lf/i/a/a/h1/v0/e/b$f;
.super Lf/i/a/a/h1/v0/e/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public r:J


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "StreamIndex"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lf/i/a/a/h1/v0/e/b$a;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/v0/e/b$f;->e:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$f;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lf/i/a/a/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$f;->f:Ljava/util/List;

    check-cast p1, Lf/i/a/a/b0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/v0/e/b$f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Lf/i/a/a/b0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/v0/e/b$f;->f:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3
    new-instance v1, Lf/i/a/a/h1/v0/e/a$b;

    iget-object v3, v0, Lf/i/a/a/h1/v0/e/b$f;->e:Ljava/lang/String;

    iget-object v4, v0, Lf/i/a/a/h1/v0/e/b$f;->k:Ljava/lang/String;

    iget v5, v0, Lf/i/a/a/h1/v0/e/b$f;->g:I

    iget-object v6, v0, Lf/i/a/a/h1/v0/e/b$f;->h:Ljava/lang/String;

    iget-wide v13, v0, Lf/i/a/a/h1/v0/e/b$f;->i:J

    iget-object v2, v0, Lf/i/a/a/h1/v0/e/b$f;->j:Ljava/lang/String;

    iget v11, v0, Lf/i/a/a/h1/v0/e/b$f;->l:I

    iget v12, v0, Lf/i/a/a/h1/v0/e/b$f;->m:I

    iget v9, v0, Lf/i/a/a/h1/v0/e/b$f;->n:I

    iget v10, v0, Lf/i/a/a/h1/v0/e/b$f;->o:I

    iget-object v7, v0, Lf/i/a/a/h1/v0/e/b$f;->p:Ljava/lang/String;

    iget-object v8, v0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    move/from16 v16, v9

    move/from16 v18, v10

    iget-wide v9, v0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    move/from16 v19, v11

    move/from16 v20, v12

    const-wide/32 v11, 0xf4240

    .line 4
    invoke-static {v8, v11, v12, v13, v14}, Lf/i/a/a/m1/h0;->i0(Ljava/util/List;JJ)[J

    move-result-object v17

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    move/from16 v23, v18

    move-wide v9, v11

    move/from16 v24, v20

    move/from16 v20, v19

    move-wide v11, v13

    .line 5
    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v18

    move-object v9, v2

    move-object v2, v1

    move-wide v7, v13

    move/from16 v10, v20

    move/from16 v11, v24

    move/from16 v12, v16

    move/from16 v13, v23

    move-object/from16 v14, v21

    move-object/from16 v16, v22

    .line 6
    invoke-direct/range {v2 .. v19}, Lf/i/a/a/h1/v0/e/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lf/i/a/a/b0;Ljava/util/List;[JJ)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "c"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v6, "t"

    .line 3
    invoke-virtual {p0, p1, v6, v4, v5}, Lf/i/a/a/h1/v0/e/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_2

    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v6, p0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    .line 5
    iget-object v2, p0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v6, p0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    add-long/2addr v6, v2

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "Unable to infer start time"

    invoke-direct {p1, v0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "d"

    .line 8
    invoke-virtual {p0, p1, v0, v4, v5}, Lf/i/a/a/h1/v0/e/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    const-wide/16 v2, 0x1

    const-string v0, "r"

    .line 9
    invoke-virtual {p0, p1, v0, v2, v3}, Lf/i/a/a/h1/v0/e/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p1, v8, v2

    if-lez p1, :cond_4

    .line 10
    iget-wide v2, p0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "Repeated chunk with unspecified duration"

    invoke-direct {p1, v0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    int-to-long v2, v1

    cmp-long p1, v2, v8

    if-gez p1, :cond_a

    .line 12
    iget-object p1, p0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    iget-wide v4, p0, Lf/i/a/a/h1/v0/e/b$f;->r:J

    mul-long v4, v4, v2

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    const-string v4, "Type"

    .line 13
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, "audio"

    .line 14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "video"

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const-string v1, "text"

    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    .line 17
    :goto_2
    iput v1, p0, Lf/i/a/a/h1/v0/e/b$f;->g:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    iget-object v5, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget v1, p0, Lf/i/a/a/h1/v0/e/b$f;->g:I

    const-string v4, "Subtype"

    if-ne v1, v7, :cond_8

    .line 21
    invoke-virtual {p0, p1, v4}, Lf/i/a/a/h1/v0/e/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/h1/v0/e/b$f;->h:Ljava/lang/String;

    goto :goto_3

    .line 22
    :cond_8
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/h1/v0/e/b$f;->h:Ljava/lang/String;

    .line 23
    :goto_3
    iget-object v1, p0, Lf/i/a/a/h1/v0/e/b$f;->h:Ljava/lang/String;

    .line 24
    iget-object v5, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Name"

    .line 25
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/h1/v0/e/b$f;->j:Ljava/lang/String;

    const-string v1, "Url"

    .line 26
    invoke-virtual {p0, p1, v1}, Lf/i/a/a/h1/v0/e/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/h1/v0/e/b$f;->k:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v4, "MaxWidth"

    .line 27
    invoke-virtual {p0, p1, v4, v1}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lf/i/a/a/h1/v0/e/b$f;->l:I

    const-string v4, "MaxHeight"

    .line 28
    invoke-virtual {p0, p1, v4, v1}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lf/i/a/a/h1/v0/e/b$f;->m:I

    const-string v4, "DisplayWidth"

    .line 29
    invoke-virtual {p0, p1, v4, v1}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lf/i/a/a/h1/v0/e/b$f;->n:I

    const-string v4, "DisplayHeight"

    .line 30
    invoke-virtual {p0, p1, v4, v1}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lf/i/a/a/h1/v0/e/b$f;->o:I

    const-string v4, "Language"

    .line 31
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/v0/e/b$f;->p:Ljava/lang/String;

    .line 32
    iget-object v5, p0, Lf/i/a/a/h1/v0/e/b$a;->d:Ljava/util/List;

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TimeScale"

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/h1/v0/e/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Lf/i/a/a/h1/v0/e/b$f;->i:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_9

    .line 34
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/h1/v0/e/b$f;->i:J

    .line 35
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/v0/e/b$f;->q:Ljava/util/ArrayList;

    :cond_a
    return-void

    .line 36
    :cond_b
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "Invalid key value["

    const-string v1, "]"

    invoke-static {v0, v5, v1}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_c
    new-instance p1, Lf/i/a/a/h1/v0/e/b$b;

    invoke-direct {p1, v4}, Lf/i/a/a/h1/v0/e/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
