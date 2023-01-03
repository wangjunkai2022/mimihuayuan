.class public final synthetic Lf/i/a/a/e1/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/e1/q;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/e1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/d;->a:Lf/i/a/a/e1/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/i/a/a/e1/d;->a:Lf/i/a/a/e1/q;

    invoke-virtual {v0}, Lf/i/a/a/e1/q;->d()V

    return-void
.end method
