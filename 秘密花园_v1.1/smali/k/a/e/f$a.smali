.class public Lk/a/e/f$a;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/e/f$a$a;
    }
.end annotation


# instance fields
.field public a:Lk/a/e/i$b;

.field public b:Ljava/nio/charset/Charset;

.field public c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lk/a/e/i$a;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Lk/a/e/f$a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/e/i$b;->f:Lk/a/e/i$b;

    iput-object v0, p0, Lk/a/e/f$a;->a:Lk/a/e/i$b;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lk/a/e/f$a;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lk/a/e/f$a;->e:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lk/a/e/f$a;->f:Z

    .line 6
    iput v0, p0, Lk/a/e/f$a;->g:I

    .line 7
    sget-object v0, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    iput-object v0, p0, Lk/a/e/f$a;->h:Lk/a/e/f$a$a;

    const-string v0, "UTF8"

    .line 8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lk/a/e/f$a;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a()Lk/a/e/f$a;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/f$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lk/a/e/f$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lk/a/e/f$a;->b:Ljava/nio/charset/Charset;

    .line 5
    iget-object v1, p0, Lk/a/e/f$a;->a:Lk/a/e/i$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/a/e/i$b;->valueOf(Ljava/lang/String;)Lk/a/e/i$b;

    move-result-object v1

    iput-object v1, v0, Lk/a/e/f$a;->a:Lk/a/e/i$b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/e/f$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/e/f$a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v1, Lk/a/e/i$a;->a:Lk/a/e/i$a;

    goto :goto_0

    :cond_0
    const-string v2, "UTF-"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lk/a/e/i$a;->b:Lk/a/e/i$a;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lk/a/e/i$a;->c:Lk/a/e/i$a;

    .line 9
    :goto_0
    iput-object v1, p0, Lk/a/e/f$a;->d:Lk/a/e/i$a;

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
    invoke-virtual {p0}, Lk/a/e/f$a;->a()Lk/a/e/f$a;

    move-result-object v0

    return-object v0
.end method
