.class public final synthetic Lf/i/a/a/e1/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lf/i/a/a/e1/q$e;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/e1/q$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/h;->a:Lf/i/a/a/e1/q$e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lf/i/a/a/e1/h;->a:Lf/i/a/a/e1/q$e;

    invoke-virtual {v0, p1}, Lf/i/a/a/e1/q$e;->a(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
