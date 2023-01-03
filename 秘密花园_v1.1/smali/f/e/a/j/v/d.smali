.class public Lf/e/a/j/v/d;
.super Ljava/lang/Object;
.source "FengliuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lcom/comeback/data/ui/jhlf/FengliuActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/v/d;->c:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    iput-object p2, p0, Lf/e/a/j/v/d;->a:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lf/e/a/j/v/d;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/e/a/j/v/d;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lf/e/a/j/v/d;->c:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/jhlf/FengliuActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 3
    iget-object p1, p0, Lf/e/a/j/v/d;->c:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    iget-object v0, p0, Lf/e/a/j/v/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/comeback/data/ui/jhlf/FengliuActivity;->t(Lcom/comeback/data/ui/jhlf/FengliuActivity;ZLjava/lang/String;)V

    return-void
.end method
