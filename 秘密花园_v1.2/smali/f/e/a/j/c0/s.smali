.class public Lf/e/a/j/c0/s;
.super Ljava/lang/Object;
.source "SecretGardenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic c:Lcom/comeback/data/ui/main/SecretGardenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;ZLandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c0/s;->c:Lcom/comeback/data/ui/main/SecretGardenActivity;

    iput-boolean p2, p0, Lf/e/a/j/c0/s;->a:Z

    iput-object p3, p0, Lf/e/a/j/c0/s;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/e/a/j/c0/s;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/e/a/j/c0/s;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lf/e/a/j/c0/s;->c:Lcom/comeback/data/ui/main/SecretGardenActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/main/SecretGardenActivity;->l(Lcom/comeback/data/ui/main/SecretGardenActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "0f7Jg/TW3I/xg4zf"

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
