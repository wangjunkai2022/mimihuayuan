.class public final Lf/i/a/a/z0/e;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/z0/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lf/i/a/a/z0/e$b;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf/i/a/a/z0/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lf/i/a/a/z0/e$b;

.field public b:I

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/z0/e$a;

    invoke-direct {v0}, Lf/i/a/a/z0/e$a;-><init>()V

    sput-object v0, Lf/i/a/a/z0/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    .line 9
    sget-object v0, Lf/i/a/a/z0/e$b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [Lf/i/a/a/z0/e$b;

    iput-object p1, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    .line 10
    array-length p1, p1

    iput p1, p0, Lf/i/a/a/z0/e;->d:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3}, [Lf/i/a/a/z0/e$b;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lf/i/a/a/z0/e$b;

    .line 4
    :cond_0
    iput-object p3, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    .line 5
    array-length p1, p3

    iput p1, p0, Lf/i/a/a/z0/e;->d:I

    .line 6
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lf/i/a/a/z0/e;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lf/i/a/a/z0/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    invoke-direct {v0, p1, v1, v2}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lf/i/a/a/z0/e$b;

    check-cast p2, Lf/i/a/a/z0/e$b;

    .line 2
    sget-object v0, Lf/i/a/a/q;->a:Ljava/util/UUID;

    .line 3
    iget-object v1, p1, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lf/i/a/a/q;->a:Ljava/util/UUID;

    .line 5
    iget-object p2, p2, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    iget-object p2, p2, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lf/i/a/a/z0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lf/i/a/a/z0/e;

    .line 3
    iget-object v2, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    iget-object v3, p1, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    iget-object p1, p1, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/z0/e;->b:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lf/i/a/a/z0/e;->b:I

    .line 5
    :cond_1
    iget v0, p0, Lf/i/a/a/z0/e;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
