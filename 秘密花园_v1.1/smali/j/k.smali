.class public Lj/k;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lj/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lj/k;

.field public static final e:Lj/k$a;


# instance fields
.field public transient a:I

.field public transient b:Ljava/lang/String;

.field public final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj/k$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Lj/k;->e:Lj/k$a;

    .line 1
    sget-object v0, Lj/c0/a;->b:Lj/k;

    .line 2
    sput-object v0, Lj/k;->d:Lj/k;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/k;->c:[B

    return-void

    :cond_0
    const-string p1, "data"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lj/k;
    .locals 2

    .line 1
    new-instance v0, Lj/k;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v1, p0, Lj/k;->c:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v1, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {p1, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lj/k;-><init>([B)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->h(Lj/k;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lj/k;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lj/c0/a;->b(Lj/k;Lj/k;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "other"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->k(Lj/k;)[B

    move-result-object v0

    return-object v0
.end method

.method public e(I)B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj/c0/a;->g(Lj/k;I)B

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj/c0/a;->f(Lj/k;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(ILj/k;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lj/c0/a;->m(Lj/k;ILj/k;II)Z

    move-result p1

    return p1
.end method

.method public g(I[BII)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lj/c0/a;->n(Lj/k;I[BII)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "other"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public h()Lj/k;
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->p(Lj/k;)Lj/k;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->i(Lj/k;)I

    move-result v0

    return v0
.end method

.method public i(Lj/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/k;->c:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lj/g;->O([BII)Lj/g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lj/c0/a;->q(Lj/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
