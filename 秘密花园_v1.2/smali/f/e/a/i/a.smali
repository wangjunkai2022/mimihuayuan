.class public Lf/e/a/i/a;
.super Ljava/lang/Object;
.source "LogInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1
.end method
