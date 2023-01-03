.class public Lk/a/e/a;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lk/a/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const-string v0, "allowfullscreen"

    const-string v1, "async"

    const-string v2, "autofocus"

    const-string v3, "checked"

    const-string v4, "compact"

    const-string v5, "declare"

    const-string v6, "default"

    const-string v7, "defer"

    const-string v8, "disabled"

    const-string v9, "formnovalidate"

    const-string v10, "hidden"

    const-string v11, "inert"

    const-string v12, "ismap"

    const-string v13, "itemscope"

    const-string v14, "multiple"

    const-string v15, "muted"

    const-string v16, "nohref"

    const-string v17, "noresize"

    const-string v18, "noshade"

    const-string v19, "novalidate"

    const-string v20, "nowrap"

    const-string v21, "open"

    const-string v22, "readonly"

    const-string v23, "required"

    const-string v24, "reversed"

    const-string v25, "seamless"

    const-string v26, "selected"

    const-string v27, "sortable"

    const-string v28, "truespeed"

    const-string v29, "typemustmatch"

    .line 1
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/e/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk/a/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lk/a/e/a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lk/a/e/a;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lk/a/e/a;->c:Lk/a/e/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lk/a/e/f$a;)Z
    .locals 3

    .line 1
    iget-object p2, p2, Lk/a/e/f$a;->h:Lk/a/e/f$a$a;

    .line 2
    sget-object v0, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_3

    const-string p2, ""

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    sget-object p1, Lk/a/e/a;->d:[Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lk/a/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lk/a/e/a;

    .line 3
    iget-object v2, p0, Lk/a/e/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lk/a/e/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lk/a/e/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lk/a/e/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lk/a/e/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lk/a/e/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lk/a/e/a;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lk/a/e/a;->c:Lk/a/e/b;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/e/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lk/a/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lk/a/e/a;->c:Lk/a/e/b;

    iget-object v2, p0, Lk/a/e/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lk/a/e/b;->k(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lk/a/e/a;->c:Lk/a/e/b;

    iget-object v2, v2, Lk/a/e/b;->c:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 7
    :cond_0
    iput-object p1, p0, Lk/a/e/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2
    :try_start_0
    new-instance v1, Lk/a/e/f;

    invoke-direct {v1, v0}, Lk/a/e/f;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v3, v1, Lk/a/e/f;->i:Lk/a/e/f$a;

    .line 4
    iget-object v1, p0, Lk/a/e/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lk/a/e/a;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 6
    invoke-static {v1, v2, v3}, Lk/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lk/a/e/f$a;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "=\""

    .line 7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v2, :cond_0

    move-object v2, v0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    .line 8
    invoke-static/range {v1 .. v6}, Lk/a/e/i;->c(Ljava/lang/Appendable;Ljava/lang/String;Lk/a/e/f$a;ZZZ)V

    const/16 v0, 0x22

    .line 9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_1
    invoke-static {v7}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lk/a/a;

    invoke-direct {v1, v0}, Lk/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
