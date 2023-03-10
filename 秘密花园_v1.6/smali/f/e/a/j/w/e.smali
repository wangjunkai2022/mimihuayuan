.class public Lf/e/a/j/w/e;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/jhlf/InfoActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/InfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/w/e;->a:Lcom/comeback/data/ui/jhlf/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/e/a/j/w/e;->a:Lcom/comeback/data/ui/jhlf/InfoActivity;

    invoke-static {p2}, Lcom/comeback/data/ui/jhlf/DownloadActivity;->l(Landroid/content/Context;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
