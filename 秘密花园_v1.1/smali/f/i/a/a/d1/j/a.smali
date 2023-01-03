.class public final Lf/i/a/a/d1/j/a;
.super Lf/i/a/a/d1/j/b;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf/i/a/a/d1/j/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/d1/j/a$a;

    invoke-direct {v0}, Lf/i/a/a/d1/j/a$a;-><init>()V

    sput-object v0, Lf/i/a/a/d1/j/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/d1/j/b;-><init>()V

    .line 2
    iput-wide p4, p0, Lf/i/a/a/d1/j/a;->a:J

    .line 3
    iput-wide p1, p0, Lf/i/a/a/d1/j/a;->b:J

    .line 4
    iput-object p3, p0, Lf/i/a/a/d1/j/a;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lf/i/a/a/d1/j/a$a;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lf/i/a/a/d1/j/b;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/d1/j/a;->a:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/d1/j/a;->b:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lf/i/a/a/d1/j/a;->c:[B

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/d1/j/a;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lf/i/a/a/d1/j/a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lf/i/a/a/d1/j/a;->c:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lf/i/a/a/d1/j/a;->c:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
