.class public Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;
.super Ljava/lang/Object;
.source "NovelList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/NovelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NovelEntity"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public collect_count_cycle:I

.field public fiction_author:Ljava/lang/String;

.field public fiction_cover:Ljava/lang/String;

.field public fiction_id:I

.field public fiction_long:I

.field public fiction_name:Ljava/lang/String;

.field public fiction_score:I

.field public have_movie:I

.field public have_voice:I

.field public introduction:Ljava/lang/String;

.field public is_end:I

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public push_time:I

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_cover:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->collect_count_cycle:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_voice:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->is_end:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_long:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_movie:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_score:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_author:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count_cycle:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->push_time:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_id:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->introduction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->collect_count_cycle:I

    return v0
.end method

.method public getFiction_author()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_author:Ljava/lang/String;

    return-object v0
.end method

.method public getFiction_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getFiction_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_id:I

    return v0
.end method

.method public getFiction_long()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_long:I

    return v0
.end method

.method public getFiction_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFiction_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_score:I

    return v0
.end method

.method public getHave_movie()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_movie:I

    return v0
.end method

.method public getHave_voice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_voice:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_end()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->is_end:I

    return v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Sw=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->is_end:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "0szvg9Dg"

    goto :goto_0

    :cond_1
    const-string v1, "3939jNbO"

    :goto_0
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->push_time:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count:I

    return v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count_cycle:I

    return v0
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->collect_count_cycle:I

    return-void
.end method

.method public setFiction_author(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_author:Ljava/lang/String;

    return-void
.end method

.method public setFiction_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_cover:Ljava/lang/String;

    return-void
.end method

.method public setFiction_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_id:I

    return-void
.end method

.method public setFiction_long(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_long:I

    return-void
.end method

.method public setFiction_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_name:Ljava/lang/String;

    return-void
.end method

.method public setFiction_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_score:I

    return-void
.end method

.method public setHave_movie(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_movie:I

    return-void
.end method

.method public setHave_voice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_voice:I

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIs_end(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->is_end:I

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->push_time:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count_cycle:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_cover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->collect_count_cycle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_voice:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->is_end:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_long:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->have_movie:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_score:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->labels:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count_cycle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->watch_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->push_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->fiction_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p2, p0, Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;->introduction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
