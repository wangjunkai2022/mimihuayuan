.class public Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;
.super Ljava/lang/Object;
.source "Novel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/Novel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity$Streamer_listEntity;
    }
.end annotation


# instance fields
.field public chapter_content:Ljava/lang/String;

.field public chapter_id:Ljava/lang/String;

.field public chapter_name:Ljava/lang/String;

.field public chapter_no:Ljava/lang/String;

.field public content_long:Ljava/lang/String;

.field public content_mp3:Ljava/lang/String;

.field public content_mp4:Ljava/lang/String;

.field public fiction_id:Ljava/lang/String;

.field public last_chapter_id:Ljava/lang/String;

.field public next_chapter_id:Ljava/lang/String;

.field public serial_time:Ljava/lang/String;

.field public streamer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity$Streamer_listEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/Novel;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/Novel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/Novel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapter_content()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_content:Ljava/lang/String;

    return-object v0
.end method

.method public getChapter_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChapter_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_name:Ljava/lang/String;

    return-object v0
.end method

.method public getChapter_no()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_no:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_long()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_long:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_mp3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_mp3:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_mp4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_mp4:Ljava/lang/String;

    return-object v0
.end method

.method public getFiction_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->fiction_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_chapter_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->last_chapter_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNext_chapter_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->next_chapter_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->serial_time:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamer_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity$Streamer_listEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->streamer_list:Ljava/util/List;

    return-object v0
.end method

.method public setChapter_content(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_content:Ljava/lang/String;

    return-void
.end method

.method public setChapter_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_id:Ljava/lang/String;

    return-void
.end method

.method public setChapter_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_name:Ljava/lang/String;

    return-void
.end method

.method public setChapter_no(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->chapter_no:Ljava/lang/String;

    return-void
.end method

.method public setContent_long(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_long:Ljava/lang/String;

    return-void
.end method

.method public setContent_mp3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_mp3:Ljava/lang/String;

    return-void
.end method

.method public setContent_mp4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->content_mp4:Ljava/lang/String;

    return-void
.end method

.method public setFiction_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->fiction_id:Ljava/lang/String;

    return-void
.end method

.method public setLast_chapter_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->last_chapter_id:Ljava/lang/String;

    return-void
.end method

.method public setNext_chapter_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->next_chapter_id:Ljava/lang/String;

    return-void
.end method

.method public setSerial_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->serial_time:Ljava/lang/String;

    return-void
.end method

.method public setStreamer_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity$Streamer_listEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->streamer_list:Ljava/util/List;

    return-void
.end method
