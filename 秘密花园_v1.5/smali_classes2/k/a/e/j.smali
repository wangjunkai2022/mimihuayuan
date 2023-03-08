.class public Lk/a/e/j;
.super Lk/a/e/h;
.source "FormElement.java"


# instance fields
.field public final i:Lk/a/g/c;


# direct methods
.method public constructor <init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 2
    new-instance p1, Lk/a/g/c;

    invoke-direct {p1}, Lk/a/g/c;-><init>()V

    iput-object p1, p0, Lk/a/e/j;->i:Lk/a/g/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic E()Lk/a/e/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/j;->P()Lk/a/e/j;

    move-result-object v0

    return-object v0
.end method

.method public P()Lk/a/e/j;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/h;->E()Lk/a/e/h;

    move-result-object v0

    check-cast v0, Lk/a/e/j;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/j;->P()Lk/a/e/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/j;->P()Lk/a/e/j;

    move-result-object v0

    return-object v0
.end method

.method public x(Lk/a/e/l;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/a/e/l;->x(Lk/a/e/l;)V

    .line 2
    iget-object v0, p0, Lk/a/e/j;->i:Lk/a/g/c;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
