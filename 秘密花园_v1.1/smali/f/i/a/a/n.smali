.class public final synthetic Lf/i/a/a/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/z;

.field public final synthetic b:Lf/i/a/a/n0;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/z;Lf/i/a/a/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n;->a:Lf/i/a/a/z;

    iput-object p2, p0, Lf/i/a/a/n;->b:Lf/i/a/a/n0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/n;->a:Lf/i/a/a/z;

    iget-object v1, p0, Lf/i/a/a/n;->b:Lf/i/a/a/n0;

    invoke-virtual {v0, v1}, Lf/i/a/a/z;->s(Lf/i/a/a/n0;)V

    return-void
.end method
