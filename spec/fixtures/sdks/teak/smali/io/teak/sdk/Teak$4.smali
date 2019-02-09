.class final Lio/teak/sdk/Teak$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->setNumericAttribute(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lio/teak/sdk/Teak$4;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/teak/sdk/Teak$4;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 344
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, p0, Lio/teak/sdk/Teak$4;->a:Ljava/lang/String;

    iget-wide v2, p0, Lio/teak/sdk/Teak$4;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lio/teak/sdk/TeakInstance;->setNumericAttribute(Ljava/lang/String;D)V

    .line 345
    return-void
.end method
