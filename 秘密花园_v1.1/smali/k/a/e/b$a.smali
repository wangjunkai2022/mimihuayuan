.class public Lk/a/e/b$a;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/a/e/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lk/a/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lk/a/e/b;


# direct methods
.method public constructor <init>(Lk/a/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/e/b$a;->b:Lk/a/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lk/a/e/b$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lk/a/e/b$a;->a:I

    iget-object v1, p0, Lk/a/e/b$a;->b:Lk/a/e/b;

    .line 2
    iget v2, v1, Lk/a/e/b;->a:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, v1, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 4
    invoke-virtual {v1, v0}, Lk/a/e/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lk/a/e/b$a;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lk/a/e/b$a;->a:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lk/a/e/b$a;->a:I

    iget-object v1, p0, Lk/a/e/b$a;->b:Lk/a/e/b;

    .line 7
    iget v1, v1, Lk/a/e/b;->a:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lk/a/e/a;

    iget-object v1, p0, Lk/a/e/b$a;->b:Lk/a/e/b;

    iget-object v2, v1, Lk/a/e/b;->b:[Ljava/lang/String;

    iget v3, p0, Lk/a/e/b$a;->a:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lk/a/e/b;->c:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lk/a/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lk/a/e/b;)V

    .line 2
    iget v1, p0, Lk/a/e/b$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/a/e/b$a;->a:I

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/e/b$a;->b:Lk/a/e/b;

    iget v1, p0, Lk/a/e/b$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lk/a/e/b$a;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lk/a/e/b;->p(I)V

    return-void
.end method
