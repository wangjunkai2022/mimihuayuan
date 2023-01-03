.class public final Li/x;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/x$a;,
        Li/x$b;
    }
.end annotation


# static fields
.field public static final k:[C

.field public static final l:Li/x$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/x$b;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/x;->l:Li/x$b;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Li/x;->k:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/x;->b:Ljava/lang/String;

    iput-object p2, p0, Li/x;->c:Ljava/lang/String;

    iput-object p3, p0, Li/x;->d:Ljava/lang/String;

    iput-object p4, p0, Li/x;->e:Ljava/lang/String;

    iput p5, p0, Li/x;->f:I

    iput-object p6, p0, Li/x;->g:Ljava/util/List;

    iput-object p7, p0, Li/x;->h:Ljava/util/List;

    iput-object p8, p0, Li/x;->i:Ljava/lang/String;

    iput-object p9, p0, Li/x;->j:Ljava/lang/String;

    const-string p2, "https"

    .line 2
    invoke-static {p1, p2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Li/x;->a:Z

    return-void
.end method

.method public static final f(Ljava/lang/String;)Li/x;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    new-instance v1, Li/x$a;

    invoke-direct {v1}, Li/x$a;-><init>()V

    invoke-virtual {v1, v0, p0}, Li/x$a;->f(Li/x;Ljava/lang/String;)Li/x$a;

    invoke-virtual {v1}, Li/x$a;->b()Li/x;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "$this$toHttpUrl"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Li/x;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Li/x;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x4

    invoke-static {v0, v3, v4, v2, v5}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    const/16 v3, 0x40

    const/4 v4, 0x6

    invoke-static {v1, v3, v2, v2, v4}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    .line 4
    iget-object v2, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    iget-object v1, p0, Li/x;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v3, v0, v2}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    iget-object v2, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    iget-object v1, p0, Li/x;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v4, v0, v3}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v4, p0, Li/x;->j:Ljava/lang/String;

    invoke-static {v4, v2, v0, v1}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v4

    .line 5
    iget-object v5, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v5}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Li/x;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v1

    .line 4
    iget-object v2, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Li/x;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Li/x;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 3
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v3, v0, v2}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 4
    iget-object v2, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Li/x;

    if-eqz v0, :cond_0

    check-cast p1, Li/x;

    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g()Li/x$a;
    .locals 7

    .line 1
    new-instance v0, Li/x$a;

    invoke-direct {v0}, Li/x$a;-><init>()V

    .line 2
    iget-object v1, p0, Li/x;->b:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Li/x$a;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Li/x;->e()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Li/x$a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Li/x;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Li/x$a;->c:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Li/x;->e:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Li/x$a;->d:Ljava/lang/String;

    .line 10
    iget v1, p0, Li/x;->f:I

    iget-object v2, p0, Li/x;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x310888    # 4.503E-39f

    const/4 v6, -0x1

    if-eq v4, v5, :cond_1

    const v5, 0x5f008eb

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1bb

    goto :goto_1

    :cond_1
    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eq v1, v2, :cond_3

    .line 12
    iget v6, p0, Li/x;->f:I

    .line 13
    :cond_3
    iput v6, v0, Li/x$a;->e:I

    .line 14
    iget-object v1, v0, Li/x$a;->f:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    iget-object v1, v0, Li/x$a;->f:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Li/x;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {p0}, Li/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/x$a;->d(Ljava/lang/String;)Li/x$a;

    .line 19
    iget-object v1, p0, Li/x;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v1, p0, Li/x;->j:Ljava/lang/String;

    const/16 v2, 0x23

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 21
    iget-object v2, p0, Li/x;->j:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :goto_2
    iput-object v3, v0, Li/x$a;->h:Ljava/lang/String;

    return-object v0

    .line 23
    :cond_5
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "scheme"

    .line 24
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3
.end method

.method public final h(Ljava/lang/String;)Li/x$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v1, Li/x$a;

    invoke-direct {v1}, Li/x$a;-><init>()V

    invoke-virtual {v1, p0, p1}, Li/x$a;->f(Li/x;Ljava/lang/String;)Li/x$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0

    :cond_0
    const-string p1, "link"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-object v1, p0, Li/x;->h:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v2, v1}, Lh/p/d;->c(II)Lh/p/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lh/p/d;->b(Lh/p/a;I)Lh/p/a;

    move-result-object v1

    .line 3
    iget v2, v1, Lh/p/a;->a:I

    .line 4
    iget v3, v1, Lh/p/a;->b:I

    .line 5
    iget v1, v1, Lh/p/a;->c:I

    if-ltz v1, :cond_1

    if-gt v2, v3, :cond_3

    goto :goto_0

    :cond_1
    if-lt v2, v3, :cond_3

    .line 6
    :goto_0
    iget-object v4, p0, Li/x;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object p1, p0, Li/x;->h:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_3

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "name"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/x;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lh/k/k;->a:Lh/k/k;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Li/x;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lh/p/d;->c(II)Lh/p/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lh/p/d;->b(Lh/p/a;I)Lh/p/a;

    move-result-object v1

    .line 5
    iget v2, v1, Lh/p/a;->a:I

    .line 6
    iget v3, v1, Lh/p/a;->b:I

    .line 7
    iget v1, v1, Lh/p/a;->c:I

    if-ltz v1, :cond_1

    if-gt v2, v3, :cond_3

    goto :goto_0

    :cond_1
    if-lt v2, v3, :cond_3

    .line 8
    :goto_0
    iget-object v4, p0, Li/x;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_3

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 9
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Collections.unmodifiableSet(result)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 13

    const-string v0, "/..."

    .line 1
    invoke-virtual {p0, v0}, Li/x;->h(Ljava/lang/String;)Li/x$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    sget-object v2, Li/x;->l:Li/x$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfb

    const-string v3, ""

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v12}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->b:Ljava/lang/String;

    .line 3
    sget-object v2, Li/x;->l:Li/x$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfb

    const-string v3, ""

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v12}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Li/x$a;->b()Li/x;

    move-result-object v0

    .line 5
    iget-object v0, v0, Li/x;->j:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    throw v1

    .line 7
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public final l(Ljava/lang/String;)Li/x;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Li/x;->h(Ljava/lang/String;)Li/x$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/x$a;->b()Li/x;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string p1, "link"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/net/URI;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Li/x;->g()Li/x$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, v0, Li/x$a;->f:Ljava/util/List;

    sget-object v5, Li/x;->l:Li/x$b;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe3

    const-string v9, "[]"

    invoke-static/range {v5 .. v15}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Li/x$a;->g:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v6, Li/x;->l:Li/x$b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc3

    const-string v10, "\\^`{|}"

    invoke-static/range {v6 .. v16}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v3

    :goto_2
    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v6, v0, Li/x$a;->h:Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v5, Li/x;->l:Li/x$b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0xa3

    const-string v9, " \"#<>\\^`{|}"

    invoke-static/range {v5 .. v15}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iput-object v3, v0, Li/x$a;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Li/x$a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    .line 10
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "Pattern.compile(pattern)"

    invoke-static {v2, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "URI.create(stripped)"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_3
    return-object v0

    .line 13
    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/x;->j:Ljava/lang/String;

    return-object v0
.end method
