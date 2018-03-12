package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Forecast;

import java.util.List;

public interface ForecastBiz {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<Forecast> forecastList(Forecast forecast);

    /**
     * 新增
     * @return
     */
    boolean addForecast(Forecast forecast);
}
