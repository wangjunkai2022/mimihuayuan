.class public final Li/m;
.super Ljava/lang/Object;
.source "ConnectionSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m$a;
    }
.end annotation


# static fields
.field public static final e:[Li/j;

.field public static final f:[Li/j;

.field public static final g:Li/m;

.field public static final h:Li/m;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    sget-object v0, Li/l0;->c:Li/l0;

    sget-object v1, Li/l0;->b:Li/l0;

    const/16 v2, 0x9

    new-array v3, v2, [Li/j;

    .line 2
    sget-object v4, Li/j;->q:Li/j;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    sget-object v4, Li/j;->r:Li/j;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 4
    sget-object v4, Li/j;->s:Li/j;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 5
    sget-object v4, Li/j;->k:Li/j;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 6
    sget-object v4, Li/j;->m:Li/j;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 7
    sget-object v4, Li/j;->l:Li/j;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    .line 8
    sget-object v4, Li/j;->n:Li/j;

    const/4 v11, 0x6

    aput-object v4, v3, v11

    .line 9
    sget-object v4, Li/j;->p:Li/j;

    const/4 v12, 0x7

    aput-object v4, v3, v12

    .line 10
    sget-object v4, Li/j;->o:Li/j;

    const/16 v13, 0x8

    aput-object v4, v3, v13

    .line 11
    sput-object v3, Li/m;->e:[Li/j;

    const/16 v3, 0x10

    new-array v3, v3, [Li/j;

    .line 12
    sget-object v4, Li/j;->q:Li/j;

    aput-object v4, v3, v5

    .line 13
    sget-object v4, Li/j;->r:Li/j;

    aput-object v4, v3, v6

    .line 14
    sget-object v4, Li/j;->s:Li/j;

    aput-object v4, v3, v7

    .line 15
    sget-object v4, Li/j;->k:Li/j;

    aput-object v4, v3, v8

    .line 16
    sget-object v4, Li/j;->m:Li/j;

    aput-object v4, v3, v9

    .line 17
    sget-object v4, Li/j;->l:Li/j;

    aput-object v4, v3, v10

    .line 18
    sget-object v4, Li/j;->n:Li/j;

    aput-object v4, v3, v11

    .line 19
    sget-object v4, Li/j;->p:Li/j;

    aput-object v4, v3, v12

    .line 20
    sget-object v4, Li/j;->o:Li/j;

    aput-object v4, v3, v13

    .line 21
    sget-object v4, Li/j;->i:Li/j;

    aput-object v4, v3, v2

    .line 22
    sget-object v2, Li/j;->j:Li/j;

    const/16 v4, 0xa

    aput-object v2, v3, v4

    .line 23
    sget-object v2, Li/j;->g:Li/j;

    const/16 v4, 0xb

    aput-object v2, v3, v4

    .line 24
    sget-object v2, Li/j;->h:Li/j;

    const/16 v4, 0xc

    aput-object v2, v3, v4

    .line 25
    sget-object v2, Li/j;->e:Li/j;

    const/16 v4, 0xd

    aput-object v2, v3, v4

    .line 26
    sget-object v2, Li/j;->f:Li/j;

    const/16 v4, 0xe

    aput-object v2, v3, v4

    .line 27
    sget-object v2, Li/j;->d:Li/j;

    const/16 v4, 0xf

    aput-object v2, v3, v4

    .line 28
    sput-object v3, Li/m;->f:[Li/j;

    .line 29
    new-instance v2, Li/m$a;

    invoke-direct {v2, v6}, Li/m$a;-><init>(Z)V

    .line 30
    sget-object v3, Li/m;->e:[Li/j;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Li/j;

    invoke-virtual {v2, v3}, Li/m$a;->c([Li/j;)Li/m$a;

    new-array v3, v7, [Li/l0;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 31
    invoke-virtual {v2, v3}, Li/m$a;->f([Li/l0;)Li/m$a;

    .line 32
    invoke-virtual {v2, v6}, Li/m$a;->d(Z)Li/m$a;

    .line 33
    invoke-virtual {v2}, Li/m$a;->a()Li/m;

    .line 34
    new-instance v2, Li/m$a;

    invoke-direct {v2, v6}, Li/m$a;-><init>(Z)V

    .line 35
    sget-object v3, Li/m;->f:[Li/j;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Li/j;

    invoke-virtual {v2, v3}, Li/m$a;->c([Li/j;)Li/m$a;

    new-array v3, v7, [Li/l0;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 36
    invoke-virtual {v2, v3}, Li/m$a;->f([Li/l0;)Li/m$a;

    .line 37
    invoke-virtual {v2, v6}, Li/m$a;->d(Z)Li/m$a;

    .line 38
    invoke-virtual {v2}, Li/m$a;->a()Li/m;

    move-result-object v2

    sput-object v2, Li/m;->g:Li/m;

    .line 39
    new-instance v2, Li/m$a;

    invoke-direct {v2, v6}, Li/m$a;-><init>(Z)V

    .line 40
    sget-object v3, Li/m;->f:[Li/j;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Li/j;

    invoke-virtual {v2, v3}, Li/m$a;->c([Li/j;)Li/m$a;

    new-array v3, v9, [Li/l0;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 41
    sget-object v0, Li/l0;->d:Li/l0;

    aput-object v0, v3, v7

    sget-object v0, Li/l0;->e:Li/l0;

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Li/m$a;->f([Li/l0;)Li/m$a;

    .line 42
    invoke-virtual {v2, v6}, Li/m$a;->d(Z)Li/m$a;

    .line 43
    invoke-virtual {v2}, Li/m$a;->a()Li/m;

    .line 44
    new-instance v0, Li/m;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v5, v1, v1}, Li/m;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    sput-object v0, Li/m;->h:Li/m;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li/m;->a:Z

    iput-boolean p2, p0, Li/m;->b:Z

    iput-object p3, p0, Li/m;->c:[Ljava/lang/String;

    iput-object p4, p0, Li/m;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    sget-object v5, Li/j;->t:Li/j$b;

    invoke-virtual {v5, v4}, Li/j$b;->b(Ljava/lang/String;)Li/j;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lh/k/g;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p0, Li/m;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Li/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v3, Lh/l/a;->a:Lh/l/a;

    .line 4
    invoke-static {v0, v2, v3}, Li/m0/b;->m([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Li/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Li/j;->t:Li/j$b;

    .line 7
    sget-object v2, Li/j;->b:Ljava/util/Comparator;

    .line 8
    invoke-static {v0, p1, v2}, Li/m0/b;->m([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const-string p1, "socket"

    .line 9
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/l0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    sget-object v5, Li/l0;->h:Li/l0$a;

    invoke-virtual {v5, v4}, Li/l0$a;->a(Ljava/lang/String;)Li/l0;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lh/k/g;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Li/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    iget-boolean v2, p0, Li/m;->a:Z

    check-cast p1, Li/m;

    iget-boolean v3, p1, Li/m;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Li/m;->c:[Ljava/lang/String;

    iget-object v3, p1, Li/m;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Li/m;->d:[Ljava/lang/String;

    iget-object v3, p1, Li/m;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 5
    :cond_4
    iget-boolean v2, p0, Li/m;->b:Z

    iget-boolean p1, p1, Li/m;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Li/m;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Li/m;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Li/m;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Li/m;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Li/m;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    const-string v0, "ConnectionSpec("

    const-string v1, "cipherSuites="

    .line 2
    invoke-static {v0, v1}, Lf/b/a/a/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Li/m;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tlsVersions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Li/m;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Li/m;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
