.class public Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;
.super Ljava/lang/Object;
.source "HotUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserPrivacyEntity"
.end annotation


# instance fields
.field public dontRecommendFriends:I

.field public locationHidePosts:I

.field public onlyFollowComment:I

.field public final synthetic this$2:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->this$2:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDontRecommendFriends()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->dontRecommendFriends:I

    return v0
.end method

.method public getLocationHidePosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->locationHidePosts:I

    return v0
.end method

.method public getOnlyFollowComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->onlyFollowComment:I

    return v0
.end method

.method public setDontRecommendFriends(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->dontRecommendFriends:I

    return-void
.end method

.method public setLocationHidePosts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->locationHidePosts:I

    return-void
.end method

.method public setOnlyFollowComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;->onlyFollowComment:I

    return-void
.end method
