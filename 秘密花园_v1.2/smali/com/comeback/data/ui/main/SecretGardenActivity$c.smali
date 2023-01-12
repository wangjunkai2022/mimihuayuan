.class public Lcom/comeback/data/ui/main/SecretGardenActivity$c;
.super Ljava/lang/Object;
.source "SecretGardenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/SecretGardenActivity;->t(Lcom/comeback/data/ui/main/bean/InstallTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/bean/InstallTask;

.field public final synthetic b:Lcom/comeback/data/ui/main/SecretGardenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;Lcom/comeback/data/ui/main/bean/InstallTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity$c;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    iput-object p2, p0, Lcom/comeback/data/ui/main/SecretGardenActivity$c;->a:Lcom/comeback/data/ui/main/bean/InstallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity$c;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    iget-object p2, p0, Lcom/comeback/data/ui/main/SecretGardenActivity$c;->a:Lcom/comeback/data/ui/main/bean/InstallTask;

    invoke-virtual {p2}, Lcom/comeback/data/ui/main/bean/InstallTask;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/comeback/data/ui/main/SecretGardenActivity;->m(Lcom/comeback/data/ui/main/SecretGardenActivity;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity$c;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->c:Z

    return-void
.end method
