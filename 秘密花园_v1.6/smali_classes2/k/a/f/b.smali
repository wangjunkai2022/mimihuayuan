.class public Lk/a/f/b;
.super Lk/a/f/m;
.source "HtmlTreeBuilder.java"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public k:Lk/a/f/c;

.field public l:Lk/a/f/c;

.field public m:Z

.field public n:Lk/a/e/h;

.field public o:Lk/a/e/j;

.field public p:Lk/a/e/h;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk/a/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lk/a/f/i$g;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 80

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    const-string v6, "td"

    const-string v7, "th"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->x:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->y:[Ljava/lang/String;

    const-string v0, "button"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->z:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->A:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->B:[Ljava/lang/String;

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    const-string v7, "rp"

    const-string v8, "rt"

    .line 6
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->C:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    const-string v78, "wbr"

    const-string v79, "xmp"

    .line 7
    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/f/b;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/f/m;-><init>()V

    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/a/f/b;->w:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Lk/a/e/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/m;->d:Lk/a/e/f;

    invoke-virtual {v0, p1}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lk/a/f/b;->u:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lk/a/f/b;->y(Lk/a/e/l;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    .line 6
    :goto_0
    instance-of v0, p1, Lk/a/e/h;

    if-eqz v0, :cond_2

    check-cast p1, Lk/a/e/h;

    .line 7
    iget-object v0, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 8
    iget-boolean v0, v0, Lk/a/f/h;->h:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lk/a/f/b;->o:Lk/a/e/j;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v0, Lk/a/e/j;->i:Lk/a/g/c;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final B(Ljava/util/ArrayList;Lk/a/e/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lk/a/e/h;",
            ">;",
            "Lk/a/e/h;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public C(Lk/a/e/h;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 2
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Lk/a/f/b;->D:[Ljava/lang/String;

    invoke-static {p1, v0}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public D(Lk/a/e/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lk/a/f/b;->B(Ljava/util/ArrayList;Lk/a/e/h;)Z

    move-result p1

    return p1
.end method

.method public E()Lk/a/e/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    return-object v0
.end method

.method public F(Ljava/lang/String;)Lk/a/e/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 3
    iget-object v2, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-object v2, v2, Lk/a/f/h;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public G(Lk/a/e/h;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 2
    iget-object v4, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v5, v5, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    iget-object v6, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 6
    iget-object v6, v6, Lk/a/f/h;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {p1}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v5

    invoke-virtual {v4}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v4

    invoke-virtual {v5, v4}, Lk/a/e/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 9
    iget-object v1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_4
    :goto_2
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public H()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-object v2, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Lk/a/f/b;->B(Ljava/util/ArrayList;Lk/a/e/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object v2, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    :cond_2
    if-nez v4, :cond_3

    move v5, v4

    move-object v4, p0

    goto :goto_2

    .line 4
    :cond_3
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    if-eqz v0, :cond_4

    .line 5
    iget-object v5, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v0}, Lk/a/f/b;->B(Ljava/util/ArrayList;Lk/a/e/h;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    move-object v3, p0

    :goto_1
    const/4 v5, 0x0

    move v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    .line 6
    iget-object v0, v4, Lk/a/f/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    .line 7
    :cond_5
    invoke-static {v0}, Lj/b;->s(Ljava/lang/Object;)V

    .line 8
    iget-object v3, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 9
    iget-object v3, v3, Lk/a/f/h;->b:Ljava/lang/String;

    .line 10
    new-instance v6, Lk/a/e/h;

    iget-object v7, v4, Lk/a/f/m;->h:Lk/a/f/f;

    invoke-static {v3, v7}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v3

    .line 11
    invoke-direct {v6, v3, v1, v1}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 12
    invoke-virtual {v4, v6}, Lk/a/f/b;->A(Lk/a/e/l;)V

    .line 13
    iget-object v3, v4, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v6}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v3

    invoke-virtual {v0}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lk/a/e/b;->c(Lk/a/e/b;)V

    .line 15
    iget-object v3, v4, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v4

    move v4, v5

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public I(Lk/a/e/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public J(Lk/a/e/h;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_f

    .line 2
    iget-object v3, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    if-nez v0, :cond_0

    .line 3
    iget-object v3, p0, Lk/a/f/b;->p:Lk/a/e/h;

    const/4 v2, 0x1

    .line 4
    :cond_0
    iget-object v3, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-object v3, v3, Lk/a/f/h;->b:Ljava/lang/String;

    const-string v4, "select"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    sget-object v0, Lk/a/f/c;->p:Lk/a/f/c;

    .line 8
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_3

    :cond_1
    const-string v4, "td"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "tr"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    sget-object v0, Lk/a/f/c;->n:Lk/a/f/c;

    .line 12
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_3

    :cond_3
    const-string v4, "tbody"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v4, "caption"

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    sget-object v0, Lk/a/f/c;->k:Lk/a/f/c;

    .line 16
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_5
    const-string v4, "colgroup"

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 18
    sget-object v0, Lk/a/f/c;->l:Lk/a/f/c;

    .line 19
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_6
    const-string v4, "table"

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    sget-object v0, Lk/a/f/c;->i:Lk/a/f/c;

    .line 22
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_7
    const-string v4, "head"

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 24
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 25
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_8
    const-string v4, "body"

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 27
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 28
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_9
    const-string v4, "frameset"

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 30
    sget-object v0, Lk/a/f/c;->s:Lk/a/f/c;

    .line 31
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_a
    const-string v4, "html"

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 33
    sget-object v0, Lk/a/f/c;->c:Lk/a/f/c;

    .line 34
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    .line 35
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 36
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 37
    :cond_d
    :goto_1
    sget-object v0, Lk/a/f/c;->m:Lk/a/f/c;

    .line 38
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_3

    .line 39
    :cond_e
    :goto_2
    sget-object v0, Lk/a/f/c;->o:Lk/a/f/c;

    .line 40
    iput-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    :cond_f
    :goto_3
    return-void
.end method

.method public b(Ljava/io/Reader;Ljava/lang/String;Lk/a/f/g;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lk/a/f/m;->b(Ljava/io/Reader;Ljava/lang/String;Lk/a/f/g;)V

    .line 2
    sget-object p1, Lk/a/f/c;->a:Lk/a/f/c;

    iput-object p1, p0, Lk/a/f/b;->k:Lk/a/f/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lk/a/f/b;->l:Lk/a/f/c;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lk/a/f/b;->m:Z

    .line 5
    iput-object p1, p0, Lk/a/f/b;->n:Lk/a/e/h;

    .line 6
    iput-object p1, p0, Lk/a/f/b;->o:Lk/a/e/j;

    .line 7
    iput-object p1, p0, Lk/a/f/b;->p:Lk/a/e/h;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk/a/f/b;->r:Ljava/util/List;

    .line 10
    new-instance p1, Lk/a/f/i$g;

    invoke-direct {p1}, Lk/a/f/i$g;-><init>()V

    iput-object p1, p0, Lk/a/f/b;->s:Lk/a/f/i$g;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lk/a/f/b;->t:Z

    .line 12
    iput-boolean p2, p0, Lk/a/f/b;->u:Z

    .line 13
    iput-boolean p2, p0, Lk/a/f/b;->v:Z

    return-void
.end method

.method public c(Lk/a/f/i;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lk/a/f/m;->g:Lk/a/f/i;

    .line 2
    iget-object v0, p0, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p0}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method

.method public f(Lk/a/e/h;)Lk/a/e/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/e/h;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final varargs h([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 3
    iget-object v2, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v2, v2, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, p1}, Lk/a/d/a;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 7
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    const-string v2, "html"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public i()V
    .locals 4

    const-string v0, "tbody"

    const-string v1, "tfoot"

    const-string v2, "thead"

    const-string v3, "template"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/a/f/b;->h([Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "table"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/a/f/b;->h([Ljava/lang/String;)V

    return-void
.end method

.method public k(Lk/a/f/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/f/m;->a:Lk/a/f/g;

    .line 2
    iget-object v0, v0, Lk/a/f/g;->a:Lk/a/f/e;

    .line 3
    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/f/m;->a:Lk/a/f/g;

    .line 5
    iget-object v0, v0, Lk/a/f/g;->a:Lk/a/f/e;

    .line 6
    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/m;->b:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lk/a/f/m;->g:Lk/a/f/i;

    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected token [%s] when in state [%s]"

    .line 8
    invoke-direct {v1, v2, p1, v3}, Lk/a/f/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 3
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 7
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 8
    sget-object v1, Lk/a/f/b;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lk/a/f/b;->E()Lk/a/e/h;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)Lk/a/e/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v2, v2, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/String;)Lk/a/e/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 3
    iget-object v2, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v2, v2, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lk/a/f/b;->z:[Ljava/lang/String;

    .line 2
    sget-object v1, Lk/a/f/b;->x:[Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lk/a/f/b;->w:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {p0, v2, v1, v0}, Lk/a/f/b;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lk/a/f/b;->x:[Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lk/a/f/b;->w:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lk/a/f/b;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v2, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    .line 3
    iget-object v2, v2, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v2, v2, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 6
    :cond_0
    sget-object v3, Lk/a/f/b;->B:[Ljava/lang/String;

    invoke-static {v2, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should not be reachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x64

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    .line 2
    iget-object v4, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 3
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    invoke-static {v4, p1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-static {v4, p2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 7
    invoke-static {v4, p3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public s(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lk/a/f/b;->A:[Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lk/a/f/b;->w:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lk/a/f/b;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public t(Lk/a/f/i$h;)Lk/a/e/h;
    .locals 9

    .line 1
    iget-object v0, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-eqz v0, :cond_9

    .line 2
    iget v0, v0, Lk/a/e/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    .line 3
    iget-object v0, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    iget-object v3, p0, Lk/a/f/m;->h:Lk/a/f/f;

    .line 4
    iget v4, v0, Lk/a/e/b;->a:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_5

    .line 5
    :cond_2
    iget-boolean v3, v3, Lk/a/f/f;->b:Z

    const/4 v4, 0x0

    .line 6
    :goto_2
    iget-object v5, v0, Lk/a/e/b;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    add-int/lit8 v5, v1, 0x1

    move v6, v5

    .line 7
    :goto_3
    iget-object v7, v0, Lk/a/e/b;->b:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_7

    .line 8
    aget-object v8, v7, v6

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    aget-object v8, v7, v1

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-nez v3, :cond_6

    iget-object v7, v0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v8, v7, v1

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 10
    invoke-virtual {v0, v6}, Lk/a/e/b;->p(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_6
    add-int/2addr v6, v2

    goto :goto_3

    :cond_7
    :goto_4
    move v1, v5

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_5
    if-lez v1, :cond_9

    .line 11
    iget-object v0, p0, Lk/a/f/m;->a:Lk/a/f/g;

    .line 12
    iget-object v0, v0, Lk/a/f/g;->a:Lk/a/f/e;

    .line 13
    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/m;->b:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    const-string v3, "Duplicate attribute"

    invoke-direct {v1, v2, v3}, Lk/a/f/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_9
    iget-boolean v0, p1, Lk/a/f/i$i;->i:Z

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {p0, p1}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lk/a/f/m;->c:Lk/a/f/k;

    sget-object v1, Lk/a/f/l;->a:Lk/a/f/l;

    .line 19
    iput-object v1, v0, Lk/a/f/k;->c:Lk/a/f/l;

    .line 20
    iget-object v1, p0, Lk/a/f/b;->s:Lk/a/f/i$g;

    invoke-virtual {v1}, Lk/a/f/i$i;->s()Lk/a/f/i$i;

    .line 21
    iget-object v2, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 22
    iget-object v2, v2, Lk/a/f/h;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Lk/a/f/i$i;->q(Ljava/lang/String;)Lk/a/f/i$i;

    invoke-virtual {v0, v1}, Lk/a/f/k;->g(Lk/a/f/i;)V

    return-object p1

    .line 24
    :cond_a
    new-instance v0, Lk/a/e/h;

    invoke-virtual {p1}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk/a/f/m;->h:Lk/a/f/f;

    invoke-static {v1, v2}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lk/a/f/m;->h:Lk/a/f/f;

    iget-object p1, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v3, p1}, Lk/a/f/f;->a(Lk/a/e/b;)Lk/a/e/b;

    invoke-direct {v0, v1, v2, p1}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 25
    invoke-virtual {p0, v0}, Lk/a/f/b;->A(Lk/a/e/l;)V

    .line 26
    iget-object p1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TreeBuilder{currentToken="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/f/m;->g:Lk/a/f/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lk/a/f/i$c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/m;->d:Lk/a/e/f;

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    iget-object v2, p1, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 6
    instance-of p1, p1, Lk/a/f/i$b;

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lk/a/e/c;

    invoke-direct {p1, v2}, Lk/a/e/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "script"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "style"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lk/a/e/n;

    invoke-direct {p1, v2}, Lk/a/e/n;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    new-instance p1, Lk/a/e/e;

    invoke-direct {p1, v2}, Lk/a/e/e;-><init>(Ljava/lang/String;)V

    .line 11
    :goto_1
    invoke-virtual {v0, p1}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    return-void
.end method

.method public v(Lk/a/f/i$d;)V
    .locals 2

    .line 1
    new-instance v0, Lk/a/e/d;

    .line 2
    iget-object v1, p1, Lk/a/f/i$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lk/a/f/i$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-direct {v0, v1}, Lk/a/e/d;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lk/a/f/b;->A(Lk/a/e/l;)V

    return-void
.end method

.method public w(Lk/a/f/i$h;)Lk/a/e/h;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk/a/f/m;->h:Lk/a/f/f;

    invoke-static {v0, v1}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v0

    .line 2
    new-instance v1, Lk/a/e/h;

    iget-object v2, p0, Lk/a/f/m;->h:Lk/a/f/f;

    iget-object v3, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v2, v3}, Lk/a/f/f;->a(Lk/a/e/b;)Lk/a/e/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 3
    invoke-virtual {p0, v1}, Lk/a/f/b;->A(Lk/a/e/l;)V

    .line 4
    iget-boolean p1, p1, Lk/a/f/i$i;->i:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lk/a/f/h;->j:Ljava/util/Map;

    iget-object v2, v0, Lk/a/f/h;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-boolean p1, v0, Lk/a/f/h;->e:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lk/a/f/m;->c:Lk/a/f/k;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lk/a/f/k;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lk/a/f/h;->f:Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method public x(Lk/a/f/i$h;Z)Lk/a/e/j;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk/a/f/m;->h:Lk/a/f/f;

    invoke-static {v0, v1}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v0

    .line 2
    new-instance v1, Lk/a/e/j;

    iget-object v2, p0, Lk/a/f/m;->h:Lk/a/f/f;

    iget-object p1, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v2, p1}, Lk/a/f/f;->a(Lk/a/e/b;)Lk/a/e/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lk/a/e/j;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 3
    iput-object v1, p0, Lk/a/f/b;->o:Lk/a/e/j;

    .line 4
    invoke-virtual {p0, v1}, Lk/a/f/b;->A(Lk/a/e/l;)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public y(Lk/a/e/l;)V
    .locals 9

    const-string v0, "table"

    .line 1
    invoke-virtual {p0, v0}, Lk/a/f/b;->n(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lk/a/e/l;->a:Lk/a/e/l;

    move-object v4, v3

    check-cast v4, Lk/a/e/h;

    if-eqz v4, :cond_0

    .line 3
    check-cast v3, Lk/a/e/h;

    const/4 v4, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lk/a/f/b;->f(Lk/a/e/h;)Lk/a/e/h;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_c

    .line 6
    invoke-static {v0}, Lj/b;->s(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 8
    iget-object v3, v0, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-static {v3}, Lj/b;->s(Ljava/lang/Object;)V

    .line 9
    iget-object v3, v0, Lk/a/e/l;->a:Lk/a/e/l;

    iget v0, v0, Lk/a/e/l;->b:I

    new-array v4, v2, [Lk/a/e/l;

    aput-object p1, v4, v1

    const/4 p1, 0x0

    if-eqz v3, :cond_b

    .line 10
    invoke-static {v4}, Lj/b;->s(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v3}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v5

    .line 12
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lk/a/e/l;->u()Lk/a/e/l;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {v6}, Lk/a/e/l;->f()I

    move-result v7

    if-ne v7, v2, :cond_5

    .line 14
    invoke-virtual {v6}, Lk/a/e/l;->g()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_3

    .line 15
    aget-object v1, v4, v7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v1, v8, :cond_2

    goto :goto_3

    :cond_2
    move v1, v7

    goto :goto_2

    .line 16
    :cond_3
    :goto_3
    invoke-virtual {v6}, Lk/a/e/l;->k()Lk/a/e/l;

    .line 17
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v5, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_4
    add-int/lit8 p1, v2, -0x1

    if-lez v2, :cond_4

    .line 18
    aget-object v1, v4, p1

    iput-object v3, v1, Lk/a/e/l;->a:Lk/a/e/l;

    move v2, p1

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {v3, v0}, Lk/a/e/l;->v(I)V

    goto :goto_7

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_7

    .line 20
    aget-object v7, v4, v6

    if-eqz v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must not contain any null objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    if-ge v1, v2, :cond_a

    .line 22
    aget-object v6, v4, v1

    if-eqz v6, :cond_9

    .line 23
    invoke-static {v3}, Lj/b;->s(Ljava/lang/Object;)V

    .line 24
    iget-object v7, v6, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v7, :cond_8

    .line 25
    invoke-virtual {v7, v6}, Lk/a/e/l;->x(Lk/a/e/l;)V

    .line 26
    :cond_8
    iput-object v3, v6, Lk/a/e/l;->a:Lk/a/e/l;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 27
    :cond_9
    throw p1

    .line 28
    :cond_a
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v5, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 29
    invoke-virtual {v3, v0}, Lk/a/e/l;->v(I)V

    goto :goto_7

    .line 30
    :cond_b
    throw p1

    .line 31
    :cond_c
    invoke-virtual {v3, p1}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    :goto_7
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/b;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
