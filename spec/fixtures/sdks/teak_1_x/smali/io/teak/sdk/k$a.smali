.class public final Lio/teak/sdk/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:F


# direct methods
.method constructor <init>(Lio/teak/sdk/k;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/teak/sdk/k$a;->a:J

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lio/teak/sdk/k$a;->b:F

    .line 92
    return-void
.end method
