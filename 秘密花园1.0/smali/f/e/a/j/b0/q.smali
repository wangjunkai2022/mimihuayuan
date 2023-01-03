.class public Lf/e/a/j/b0/q;
.super Ljava/lang/Object;
.source "SecretGardenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/j/b0/q;->a:Landroidx/appcompat/app/AlertDialog;

    iput p3, p0, Lf/e/a/j/b0/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/e/a/j/b0/q;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    const-string v0, "WwMQEDQdVkcaBVE="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lf/e/a/j/b0/q;->b:I

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    return-void
.end method
