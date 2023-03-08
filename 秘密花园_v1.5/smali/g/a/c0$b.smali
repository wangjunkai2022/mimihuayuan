.class public Lg/a/c0$b;
.super Ljava/lang/Object;
.source "RealmList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lg/a/c0;


# direct methods
.method public constructor <init>(Lg/a/c0;Lg/a/c0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lg/a/c0$b;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lg/a/c0$b;->b:I

    .line 4
    iget-object p1, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-static {p1}, Lg/a/c0;->b(Lg/a/c0;)I

    move-result p1

    iput p1, p0, Lg/a/c0$b;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-static {v0}, Lg/a/c0;->d(Lg/a/c0;)I

    move-result v0

    iget v1, p0, Lg/a/c0$b;->c:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    .line 2
    iget-object v0, v0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    invoke-virtual {p0}, Lg/a/c0$b;->a()V

    .line 4
    iget v0, p0, Lg/a/c0$b;->a:I

    iget-object v1, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-virtual {v1}, Lg/a/c0;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    .line 2
    iget-object v0, v0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    invoke-virtual {p0}, Lg/a/c0$b;->a()V

    .line 4
    iget v0, p0, Lg/a/c0$b;->a:I

    .line 5
    :try_start_0
    iget-object v1, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-virtual {v1, v0}, Lg/a/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    iput v0, p0, Lg/a/c0$b;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 7
    iput v2, p0, Lg/a/c0$b;->a:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8
    :catch_0
    invoke-virtual {p0}, Lg/a/c0$b;->a()V

    .line 9
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Cannot access index "

    const-string v3, " when size is "

    invoke-static {v2, v0, v3}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-virtual {v2}, Lg/a/c0;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    .line 2
    iget-object v0, v0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget v0, p0, Lg/a/c0$b;->b:I

    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lg/a/c0$b;->a()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    iget v1, p0, Lg/a/c0$b;->b:I

    invoke-virtual {v0, v1}, Lg/a/c0;->remove(I)Ljava/lang/Object;

    .line 6
    iget v0, p0, Lg/a/c0$b;->b:I

    iget v1, p0, Lg/a/c0$b;->a:I

    if-ge v0, v1, :cond_0

    .line 7
    iget v0, p0, Lg/a/c0$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/a/c0$b;->a:I

    :cond_0
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lg/a/c0$b;->b:I

    .line 9
    iget-object v0, p0, Lg/a/c0$b;->d:Lg/a/c0;

    invoke-static {v0}, Lg/a/c0;->c(Lg/a/c0;)I

    move-result v0

    iput v0, p0, Lg/a/c0$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
