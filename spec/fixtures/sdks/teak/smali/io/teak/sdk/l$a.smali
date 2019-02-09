.class public final Lio/teak/sdk/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:F


# direct methods
.method constructor <init>(Lio/teak/sdk/l;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/teak/sdk/l$a;->a:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lio/teak/sdk/l$a;->b:F

    .line 80
    return-void
.end method
