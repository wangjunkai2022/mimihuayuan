.class public Lcom/comeback/data/ui/main/LauncherActivity$c;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/LauncherActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity$c;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/main/LauncherActivity$c;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-virtual {p2}, Lcom/comeback/data/ui/main/LauncherActivity;->p()V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
