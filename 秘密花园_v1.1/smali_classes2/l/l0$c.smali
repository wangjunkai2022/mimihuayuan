.class public final Ll/l0$c;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v1, p2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 3
    array-length v1, p1

    if-ne v1, v2, :cond_4

    .line 4
    array-length v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 5
    aget-object v1, p2, v4

    if-eqz v1, :cond_1

    .line 6
    aget-object v1, p2, v4

    invoke-static {v1}, Ll/l0;->b(Ljava/lang/reflect/Type;)V

    .line 7
    aget-object p1, p1, v4

    if-ne p1, v0, :cond_0

    .line 8
    aget-object p1, p2, v4

    iput-object p1, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    .line 9
    iput-object v0, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 11
    :cond_1
    throw v3

    .line 12
    :cond_2
    aget-object p2, p1, v4

    if-eqz p2, :cond_3

    .line 13
    aget-object p2, p1, v4

    invoke-static {p2}, Ll/l0;->b(Ljava/lang/reflect/Type;)V

    .line 14
    iput-object v3, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    .line 15
    aget-object p1, p1, v4

    iput-object p1, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    .line 16
    :cond_3
    throw v3

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Ll/l0;->c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    iget-object v0, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Ll/l0;->a:[Ljava/lang/reflect/Type;

    :goto_0
    return-object v1
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 1
    iget-object v1, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const-string v0, "? super "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/l0$c;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Ll/l0;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    return-object v0

    :cond_1
    const-string v0, "? extends "

    .line 3
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/l0$c;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Ll/l0;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
