.class public Lf/e/a/j/c0/t;
.super Ljava/lang/Object;
.source "SecretGardenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/j/c0/t;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/e/a/j/c0/t;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "09/DgeTc3YjWg6jPnNLYgpbXhuvYl4G5m8Gmjv/nhf2Hi/vhg9yC187Z0/PQg8LQ0P3G"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
