.class public Lcom/baidu/model/risk/RiskScanResult;
.super Ljava/lang/Object;
.source "RiskScanResult.java"


# static fields
.field public static final RISK_CODE_UNDEFINE:I = -0x2

.field public static final RISK_SUB_CODE_UNDEFINE:I = -0x2


# instance fields
.field public final apkpath:Ljava/lang/String;

.field public final appname:Ljava/lang/String;

.field public final errorinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final md5:Ljava/lang/String;

.field public final packagename:Ljava/lang/String;

.field public final riskCode:I

.field public final riskSubCode:I

.field public final versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2, "apkpath"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "packagename"    # Ljava/lang/String;
    .param p6, "versionname"    # Ljava/lang/String;
    .param p7, "riskCode"    # I
    .param p8, "riskSubCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 70
    .local p1, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/baidu/model/risk/RiskScanResult;->errorinfo:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lcom/baidu/model/risk/RiskScanResult;->apkpath:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/baidu/model/risk/RiskScanResult;->appname:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/baidu/model/risk/RiskScanResult;->md5:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/baidu/model/risk/RiskScanResult;->packagename:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/baidu/model/risk/RiskScanResult;->versionname:Ljava/lang/String;

    .line 77
    iput p7, p0, Lcom/baidu/model/risk/RiskScanResult;->riskCode:I

    .line 78
    iput p8, p0, Lcom/baidu/model/risk/RiskScanResult;->riskSubCode:I

    .line 79
    return-void
.end method


# virtual methods
.method public getApkpath()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->apkpath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->errorinfo:Ljava/util/List;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getRiskCode()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/baidu/model/risk/RiskScanResult;->riskCode:I

    return v0
.end method

.method public getRiskSubCode()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/baidu/model/risk/RiskScanResult;->riskSubCode:I

    return v0
.end method

.method public getVersionname()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/baidu/model/risk/RiskScanResult;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RiskScanResult{errorinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/risk/RiskScanResult;->errorinfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apkpath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/risk/RiskScanResult;->apkpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/risk/RiskScanResult;->appname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/risk/RiskScanResult;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packagename=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/risk/RiskScanResult;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/model/risk/RiskScanResult;->versionname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", riskCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/model/risk/RiskScanResult;->riskCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", riskSubCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/model/risk/RiskScanResult;->riskSubCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
