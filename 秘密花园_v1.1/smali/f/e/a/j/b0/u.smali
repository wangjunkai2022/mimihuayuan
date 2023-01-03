.class public Lf/e/a/j/b0/u;
.super Ljava/lang/Object;
.source "SecretGardenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:Lcom/comeback/data/ui/main/SecretGardenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b0/u;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    iput-object p2, p0, Lf/e/a/j/b0/u;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/e/a/j/b0/u;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lf/e/a/j/b0/u;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/main/QuestionActivity;->l(Landroid/content/Context;)V

    return-void
.end method
