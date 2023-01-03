.class public Lk/a/e/c;
.super Lk/a/e/n;
.source "CDataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/a/e/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Lk/a/e/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/c;->D()Lk/a/e/c;

    move-result-object v0

    return-object v0
.end method

.method public D()Lk/a/e/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/n;->B()Lk/a/e/n;

    move-result-object v0

    check-cast v0, Lk/a/e/c;

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
    invoke-virtual {p0}, Lk/a/e/c;->D()Lk/a/e/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/c;->D()Lk/a/e/c;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<![CDATA["

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0

    :try_start_0
    const-string p2, "]]>"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lk/a/b;

    invoke-direct {p2, p1}, Lk/a/b;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
