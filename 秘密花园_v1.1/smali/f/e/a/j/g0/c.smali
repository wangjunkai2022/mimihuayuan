.class public Lf/e/a/j/g0/c;
.super Ljava/lang/Object;
.source "NanaLaunchActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g0/c;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/e/a/j/g0/c;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    const-string v0, "XxYXFBhJFhwDEVUfVgIaE0cDGkoIHFQcBVcbARkZFwdYBQoK"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->l(Lcom/comeback/data/ui/nana/NanaLaunchActivity;Ll/g0;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/e/a/j/g0/c;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->m(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    return-void
.end method
