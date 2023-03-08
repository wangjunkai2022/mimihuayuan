.class public Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "VoiceAnchorSpecialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity$a;->f:Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity$a;->f:Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;->r(Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;)V

    return-void
.end method
