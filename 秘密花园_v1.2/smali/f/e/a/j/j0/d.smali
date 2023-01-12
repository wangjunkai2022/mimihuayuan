.class public Lf/e/a/j/j0/d;
.super Ljava/lang/Object;
.source "ZYBrowseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/ZYBrowseActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/j/j0/d;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/e/a/j/j0/d;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
