.class public Lf/c/a/i/c;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/c/a/i/b;


# direct methods
.method public constructor <init>(Lf/c/a/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c/a/i/c;->a:Lf/c/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/c/a/i/c;->a:Lf/c/a/i/b;

    iget-object v1, v0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v1, v1, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    .line 2
    iget-object v0, v0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lf/c/a/i/c;->a:Lf/c/a/i/b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lf/c/a/i/b;->j:Z

    .line 6
    iput-boolean v1, v0, Lf/c/a/i/b;->g:Z

    .line 7
    iget-object v1, v0, Lf/c/a/i/b;->f:Lf/c/a/h/b;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v0}, Lf/c/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
