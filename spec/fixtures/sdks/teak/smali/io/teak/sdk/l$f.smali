.class final Lio/teak/sdk/l$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:[F

.field c:I


# direct methods
.method constructor <init>(Lio/teak/sdk/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lio/teak/sdk/l$f;->a:F

    .line 68
    new-array v0, v1, [F

    iput-object v0, p0, Lio/teak/sdk/l$f;->b:[F

    .line 69
    iput v1, p0, Lio/teak/sdk/l$f;->c:I

    .line 70
    return-void
.end method
