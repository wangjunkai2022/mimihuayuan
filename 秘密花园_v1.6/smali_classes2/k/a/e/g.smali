.class public Lk/a/e/g;
.super Lk/a/e/k;
.source "DocumentType.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/e/k;-><init>()V

    .line 2
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lj/b;->s(Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lj/b;->s(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    const-string p1, "publicId"

    .line 6
    invoke-virtual {p0, p1, p2}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    const-string p2, "systemId"

    .line 7
    invoke-virtual {p0, p2, p3}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    .line 8
    invoke-virtual {p0, p1}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p3, "pubSysKey"

    if-eqz p1, :cond_0

    const-string p1, "PUBLIC"

    .line 9
    invoke-virtual {p0, p3, p1}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const-string p1, "SYSTEM"

    .line 11
    invoke-virtual {p0, p3, p1}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p3, Lk/a/e/f$a;->h:Lk/a/e/f$a$a;

    .line 2
    sget-object p3, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    const-string p2, "name"

    .line 6
    invoke-virtual {p0, p2}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string v2, " "

    if-eqz p3, :cond_1

    .line 7
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string p2, "pubSysKey"

    .line 8
    invoke-virtual {p0, p2}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    .line 13
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p2, 0x3e

    .line 14
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0

    return-void
.end method
