.class public Lf/c/a/i/d;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lf/c/a/i/b;


# direct methods
.method public constructor <init>(Lf/c/a/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c/a/i/d;->a:Lf/c/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/c/a/i/d;->a:Lf/c/a/i/b;

    .line 2
    iget-object v0, p1, Lf/c/a/i/b;->f:Lf/c/a/h/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lf/c/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
